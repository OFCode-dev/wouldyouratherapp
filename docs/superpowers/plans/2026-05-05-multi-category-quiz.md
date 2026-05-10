# Multi-Category Quiz Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Mevcut tek-test "Bu mu, O mu?" uygulamasını 8 bağımsız kategorili teste dönüştürmek; kategori-özel profiller, görsel paylaşım kartı, test geçmişi, dark mode ve onboarding eklemek.

**Architecture:** Flutter + Riverpod + go_router. Mevcut feature-based yapı genişletilir, yeni veritabanı yok. SharedPreferences geçmiş ve onboarding flag'i için, `screenshot` paketi widget→PNG dönüşümü için. 8 kategori × 12 soru × 4 profil = ~96 soru, 32 profil seed data'da.

**Tech Stack:** Flutter 3.11.5, flutter_riverpod ^2.5.1, go_router ^14.8.1, share_plus ^10.0.0, shared_preferences (yeni), screenshot (yeni), Material 3.

---

## File Structure

### New Files
```
lib/features/onboarding/onboarding_screen.dart            // PageView, 3 slayt, flag yazımı
lib/features/home/widgets/featured_category_card.dart    // Hero kart (büyük, renkli)
lib/features/home/widgets/mini_category_card.dart        // Grid mini kart
lib/features/result/widgets/result_share_card.dart       // PNG paylaşım için sarmalanan widget
lib/features/history/history_controller.dart             // Riverpod, SharedPreferences
lib/features/settings/providers/theme_controller.dart    // Riverpod, dark mode toggle
test/features/result/services/result_calculator_test.dart // categoryId filtre testi
test/features/history/history_controller_test.dart       // SharedPreferences geçmiş testi
```

### Modified Files
```
pubspec.yaml                                              // shared_preferences, screenshot
lib/app/app.dart                                          // ThemeMode, ProviderScope, onboarding redirect
lib/app/router.dart                                       // /onboarding + path params
lib/app/theme.dart                                        // darkTheme tanımı
lib/features/quiz/models/quiz_category.dart              // emoji, color alanları
lib/features/quiz/models/quiz_question.dart              // (değişmez ama referans için)
lib/features/quiz/data/quiz_seed_data.dart               // 8 kategori, ~96 soru
lib/features/quiz/providers/quiz_controller.dart         // categoryId parametresi
lib/features/quiz/quiz_screen.dart                       // categoryId param okuması
lib/features/result/models/result_profile.dart           // categoryId alanı
lib/features/result/data/result_profiles.dart            // 32 profil
lib/features/result/services/result_calculator.dart      // categoryId filtresi
lib/features/result/services/share_text_builder.dart     // (referans, görsel paylaşımda kullanılmaz)
lib/features/result/result_screen.dart                   // Screenshot sarmalı, görsel paylaş
lib/features/home/home_screen.dart                       // Featured + mini grid + 🎲
lib/features/settings/settings_screen.dart               // Dark mode toggle
```

---

## Phase 1 — Infrastructure

### Task 1: Add packages

**Files:**
- Modify: `pubspec.yaml`

- [ ] **Step 1: Add dependencies**

`pubspec.yaml` `dependencies:` bloğuna ekle (mevcut dependencies'in altına):

```yaml
  shared_preferences: ^2.3.0
  screenshot: ^3.0.0
```

- [ ] **Step 2: Install**

Run: `cd /home/bayrak/projects/wouldyouratherapp && flutter pub get`
Expected: `Got dependencies!` mesajı, pubspec.lock güncellenir.

- [ ] **Step 3: Verify import works**

Run: `dart analyze` — herhangi bir hata olmamalı (bu noktada kullanım yok ama paket çözümleme tamam mı kontrol).

- [ ] **Step 4: Commit**

```bash
git add pubspec.yaml pubspec.lock
git commit -m "feat: add shared_preferences and screenshot packages"
```

---

### Task 2: Extend QuizCategory model

**Files:**
- Modify: `lib/features/quiz/models/quiz_category.dart`

- [ ] **Step 1: Add emoji and color fields**

```dart
import 'package:flutter/material.dart';

class QuizCategory {
  final String id;
  final String title;
  final String description;
  final String emoji;
  final Color color;

  const QuizCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.emoji,
    required this.color,
  });
}
```

Not: Önceden `description` nullable idi (`String?`). Tüm kategoriler description aldığı için `String` (required) yapıldı. Mevcut tek kategori kullanımında `description` zaten dolu olabilir — yoksa Task 9'da seed data'da düzeltilir.

- [ ] **Step 2: Run analyzer**

Run: `dart analyze lib/features/quiz/models/quiz_category.dart`
Expected: No issues (bu dosya için).

- [ ] **Step 3: Commit**

```bash
git add lib/features/quiz/models/quiz_category.dart
git commit -m "feat(model): add emoji and color fields to QuizCategory"
```

---

### Task 3: Extend ResultProfile model

**Files:**
- Modify: `lib/features/result/models/result_profile.dart`

- [ ] **Step 1: Add categoryId field**

```dart
class ResultProfile {
  final String id;
  final String categoryId;
  final String title;
  final String subtitle;
  final String description;
  final String emoji;
  final String shareText;

  const ResultProfile({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.emoji,
    required this.shareText,
  });
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/result/models/result_profile.dart
git commit -m "feat(model): add categoryId field to ResultProfile"
```

Not: Bu commit'ten sonra mevcut `result_profiles.dart` derleme hatası verecek (categoryId eksik). Task 12'de düzeltilecek. Bu yüzden Task 3 ile Task 12 arasında uygulamayı çalıştırma.

---

### Task 4: Update router with categoryId paths

**Files:**
- Modify: `lib/app/router.dart`

- [ ] **Step 1: Read current router**

Read `lib/app/router.dart` to see current GoRouter setup.

- [ ] **Step 2: Add /onboarding route + path params**

```dart
import 'package:go_router/go_router.dart';
import '../features/home/home_screen.dart';
import '../features/quiz/quiz_screen.dart';
import '../features/result/result_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/onboarding/onboarding_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (c, s) => const HomeScreen()),
    GoRoute(path: '/onboarding', builder: (c, s) => const OnboardingScreen()),
    GoRoute(
      path: '/quiz/:categoryId',
      builder: (c, s) => QuizScreen(categoryId: s.pathParameters['categoryId']!),
    ),
    GoRoute(
      path: '/result/:categoryId',
      builder: (c, s) => ResultScreen(categoryId: s.pathParameters['categoryId']!),
    ),
    GoRoute(path: '/settings', builder: (c, s) => const SettingsScreen()),
  ],
);
```

Not: `OnboardingScreen`, `QuizScreen.categoryId`, `ResultScreen.categoryId` henüz yok — sonraki task'larda oluşturulacak. Şimdi compile error olur, normal.

- [ ] **Step 3: Commit (compile-broken)**

```bash
git add lib/app/router.dart
git commit -m "feat(router): add /onboarding and categoryId path params"
```

---

### Task 5: Create OnboardingScreen skeleton

**Files:**
- Create: `lib/features/onboarding/onboarding_screen.dart`

- [ ] **Step 1: Write skeleton**

```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _index = 0;

  static const _slides = [
    (
      emoji: '🎯',
      title: 'Bu mu, O mu?',
      body: '8 farklı kategoride kendi tarzını keşfet.',
    ),
    (
      emoji: '🎉',
      title: 'Hızlı ve eğlenceli',
      body: 'Her test 10–15 soru. Hızlıca cevapla, profilini gör.',
    ),
    (
      emoji: '📤',
      title: 'Paylaş',
      body: 'Sonucunu görsel kart olarak arkadaşlarınla paylaş.',
    ),
  ];

  Future<void> _finish() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_done', true);
    if (mounted) context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _slides.length,
                onPageChanged: (i) => setState(() => _index = i),
                itemBuilder: (c, i) {
                  final s = _slides[i];
                  return Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(s.emoji, style: const TextStyle(fontSize: 80)),
                        const SizedBox(height: 32),
                        Text(s.title, style: Theme.of(c).textTheme.headlineMedium, textAlign: TextAlign.center),
                        const SizedBox(height: 16),
                        Text(s.body, style: Theme.of(c).textTheme.bodyLarge, textAlign: TextAlign.center),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_slides.length, (i) => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: i == _index ? 24 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: i == _index ? Theme.of(context).colorScheme.primary : Colors.grey[400],
                  borderRadius: BorderRadius.circular(4),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _index == _slides.length - 1
                      ? _finish
                      : () => _controller.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeOut),
                  child: Text(_index == _slides.length - 1 ? 'Başla' : 'Devam'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/onboarding/onboarding_screen.dart
git commit -m "feat(onboarding): add 3-slide onboarding screen with PageView"
```

---

### Task 6: Create HistoryController

**Files:**
- Create: `lib/features/history/history_controller.dart`
- Create: `test/features/history/history_controller_test.dart`

- [ ] **Step 1: Write failing test**

```dart
// test/features/history/history_controller_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:would_you_rather_app/features/history/history_controller.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('records and reads test results', () async {
    final history = HistoryStore();
    await history.record('yemek', 'foodie');
    expect(await history.getProfile('yemek'), 'foodie');
    expect(await history.getProfile('seyahat'), null);
    expect(await history.completedCount(), 1);
  });

  test('overwrites previous result for same category', () async {
    final history = HistoryStore();
    await history.record('yemek', 'foodie');
    await history.record('yemek', 'home_cook');
    expect(await history.getProfile('yemek'), 'home_cook');
    expect(await history.completedCount(), 1);
  });
}
```

- [ ] **Step 2: Run test (verify fail)**

Run: `flutter test test/features/history/history_controller_test.dart`
Expected: FAIL — "Target of URI doesn't exist"

- [ ] **Step 3: Implement HistoryStore + Riverpod provider**

```dart
// lib/features/history/history_controller.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryStore {
  static const _prefix = 'history_';

  Future<void> record(String categoryId, String profileId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('$_prefix$categoryId', profileId);
  }

  Future<String?> getProfile(String categoryId) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('$_prefix$categoryId');
  }

  Future<Map<String, String>> all() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys().where((k) => k.startsWith(_prefix));
    return {
      for (final k in keys) k.substring(_prefix.length): prefs.getString(k)!,
    };
  }

  Future<int> completedCount() async => (await all()).length;
}

final historyStoreProvider = Provider<HistoryStore>((_) => HistoryStore());

final historyMapProvider = FutureProvider<Map<String, String>>((ref) async {
  return ref.read(historyStoreProvider).all();
});
```

- [ ] **Step 4: Run test (verify pass)**

Run: `flutter test test/features/history/history_controller_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/features/history/history_controller.dart test/features/history/history_controller_test.dart
git commit -m "feat(history): add HistoryStore with SharedPreferences persistence"
```

---

### Task 7: Create ThemeController

**Files:**
- Create: `lib/features/settings/providers/theme_controller.dart`

- [ ] **Step 1: Write controller**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends Notifier<ThemeMode> {
  static const _key = 'theme_mode';

  @override
  ThemeMode build() {
    _load();
    return ThemeMode.system;
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final v = prefs.getString(_key);
    state = switch (v) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.system,
    };
  }

  Future<void> set(ThemeMode mode) async {
    state = mode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, mode.name);
  }
}

final themeControllerProvider =
    NotifierProvider<ThemeController, ThemeMode>(ThemeController.new);
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/settings/providers/theme_controller.dart
git commit -m "feat(settings): add ThemeController with system/light/dark modes"
```

---

### Task 8: Define dark theme

**Files:**
- Modify: `lib/app/theme.dart`

- [ ] **Step 1: Read current theme**

Read `lib/app/theme.dart`. Mevcut tek `lightTheme` (veya benzer bir ad) var.

- [ ] **Step 2: Add darkTheme**

Mevcut light tema tanımını koru, aynısını darkTheme olarak Material 3 dark scheme ile ekle:

```dart
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.light),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
  appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
);
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/theme.dart
git commit -m "feat(theme): add darkTheme variant"
```

---

## Phase 2 — Content

### Task 9: Define 8 categories in seed data

**Files:**
- Modify: `lib/features/quiz/data/quiz_seed_data.dart`

Bu task tüm kategorilerin **metadata**'sını tanımlar. Sorular Task 11'de eklenecek.

- [ ] **Step 1: Define categories list**

`quiz_seed_data.dart` üst kısmına ekle (mevcut sorular ileride değişecek):

```dart
import 'package:flutter/material.dart';
import '../models/quiz_category.dart';
import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

const List<QuizCategory> quizCategories = [
  QuizCategory(
    id: 'yemek',
    title: 'Yemek & İçecek',
    description: 'Foodie misin, klasik mi? Tarzını keşfet.',
    emoji: '🍕',
    color: Color(0xFFEF4444),
  ),
  QuizCategory(
    id: 'seyahat',
    title: 'Seyahat Tarzı',
    description: 'Bütçe gezgini mi, lüks turist mi?',
    emoji: '✈️',
    color: Color(0xFF3B82F6),
  ),
  QuizCategory(
    id: 'sabah_gece',
    title: 'Sabah mı, Gece mi?',
    description: 'Erken kuş musun, gece kuşu mu?',
    emoji: '🌙',
    color: Color(0xFF6366F1),
  ),
  QuizCategory(
    id: 'sosyal',
    title: 'Sosyal Hayat',
    description: 'Introvert mi, extrovert mi?',
    emoji: '🎉',
    color: Color(0xFFEC4899),
  ),
  QuizCategory(
    id: 'alisveris',
    title: 'Alışveriş & Para',
    description: 'Anlık alıcı mı, stratejik mi?',
    emoji: '🛍️',
    color: Color(0xFFF59E0B),
  ),
  QuizCategory(
    id: 'calisma',
    title: 'Çalışma Tarzı',
    description: 'Deep focus mu, yaratıcı kaos mu?',
    emoji: '💻',
    color: Color(0xFF10B981),
  ),
  QuizCategory(
    id: 'teknoloji',
    title: 'Teknoloji & Sosyal Medya',
    description: 'Erken benimseyici mi, dijital minimalist mi?',
    emoji: '📱',
    color: Color(0xFF06B6D4),
  ),
  QuizCategory(
    id: 'yasam',
    title: 'Yaşam Alanı',
    description: 'Şehir çocuğu mu, doğa sever mi?',
    emoji: '🏙️',
    color: Color(0xFF8B5CF6),
  ),
];
```

Not: `quizSeedQuestions` mevcut listesi şimdilik kalsın, Task 11'de tamamen yeniden yazılacak.

- [ ] **Step 2: Commit**

```bash
git add lib/features/quiz/data/quiz_seed_data.dart
git commit -m "feat(content): add 8 quiz categories with emoji and color"
```

---

### Task 10: Write all 32 result profiles

**Files:**
- Modify: `lib/features/result/data/result_profiles.dart`

- [ ] **Step 1: Replace entire file**

Dosyayı **tamamen yeniden yaz** (eski 4 global profil silinir):

```dart
import '../models/result_profile.dart';

const List<ResultProfile> resultProfiles = [
  // ===== YEMEK & İÇECEK =====
  ResultProfile(
    id: 'foodie_kasif', categoryId: 'yemek',
    title: 'Foodie Kaşif', subtitle: 'Her tabağın yeni bir macera',
    description: 'Yemek senin için bir kültür. Yeni mutfaklar, baharatlar, tekniklerle aran iyi. Damak tadın gelişmiş, tabaktan asla taviz vermezsin.',
    emoji: '🌶️',
    shareText: 'Foodie Kaşif çıktım — yeni tatlar peşinde! 🌶️',
  ),
  ResultProfile(
    id: 'konfor_sever', categoryId: 'yemek',
    title: 'Konfor Sever', subtitle: 'Annem yemeği gibisi yok',
    description: 'Klasiklere bağlısın. Yeni tat denemekten çok bildiğin lezzetlere döner; ev yemeği seni mutlu eder.',
    emoji: '🍲',
    shareText: 'Konfor Sever çıktım — bildiğim tatlar bana yeter 🍲',
  ),
  ResultProfile(
    id: 'ev_ascisi', categoryId: 'yemek',
    title: 'Ev Aşçısı', subtitle: 'Mutfak benim sahnem',
    description: 'Dışarda yemek yerine kendin pişirmeyi tercih edersin. Tarif denemek, yeni teknik öğrenmek hobindir.',
    emoji: '👨‍🍳',
    shareText: 'Ev Aşçısı çıktım — mutfakta sanat yapıyorum 👨‍🍳',
  ),
  ResultProfile(
    id: 'sosyal_gurme', categoryId: 'yemek',
    title: 'Sosyal Gurme', subtitle: 'Yemek paylaşıldıkça çoğalır',
    description: 'Yemeğin tadından çok ortamı önemsersin. Arkadaşlarla restoran turu, kalabalık masa — senin enerjin orada.',
    emoji: '🍷',
    shareText: 'Sosyal Gurme çıktım — masa ne kadar kalabalık o kadar lezzetli 🍷',
  ),

  // ===== SEYAHAT =====
  ResultProfile(
    id: 'ozgur_gezgin', categoryId: 'seyahat',
    title: 'Özgür Gezgin', subtitle: 'Plan yapmak değil, kaybolmak',
    description: 'Sırt çantası, açık plan, beklenmeyen rotalar. Bütçe önemli değil, deneyim önemli.',
    emoji: '🎒',
    shareText: 'Özgür Gezgin çıktım — yol nereye, ben oraya 🎒',
  ),
  ResultProfile(
    id: 'luks_turist', categoryId: 'seyahat',
    title: 'Lüks Turist', subtitle: 'İyi bir tatil hak edilir',
    description: 'Konfor önceliklin. Hotel kalitesi, kahvaltı, manzara — her detay önemli. Maceradan çok dinlenme arıyorsun.',
    emoji: '🏖️',
    shareText: 'Lüks Turist çıktım — kalitenin tadı bambaşka 🏖️',
  ),
  ResultProfile(
    id: 'kultur_avcisi', categoryId: 'seyahat',
    title: 'Kültür Avcısı', subtitle: 'Müze, tarih, hikâye',
    description: 'Bir şehrin ruhunu arıyorsun. Müzeler, eski mahalleler, yerel hikâyeler. Plaja gitsen bile arkasındaki tarih ilgini çeker.',
    emoji: '🏛️',
    shareText: 'Kültür Avcısı çıktım — her sokak bir hikâye 🏛️',
  ),
  ResultProfile(
    id: 'rahat_tatilci', categoryId: 'seyahat',
    title: 'Rahat Tatilci', subtitle: 'Tatil, dinlenmektir',
    description: 'Tatil = mola. Plaj, havuz, kitap, az hareket. "Tatilde de yorulmak" senin için çelişki.',
    emoji: '🌴',
    shareText: 'Rahat Tatilci çıktım — tatil dediğin böyle olur 🌴',
  ),

  // ===== SABAH/GECE =====
  ResultProfile(
    id: 'erken_kus', categoryId: 'sabah_gece',
    title: 'Erken Kuş', subtitle: 'Sabahın saatini ben yazarım',
    description: 'En enerjik sen, gün doğmadan ayaktasın. Sabah rutini kutsal, gece 11\'den sonra kanepe çağırıyor.',
    emoji: '🌅',
    shareText: 'Erken Kuş çıktım — sabah benim kraliyetim 🌅',
  ),
  ResultProfile(
    id: 'gece_yarisi_ruhu', categoryId: 'sabah_gece',
    title: 'Gece Yarısı Ruhu', subtitle: 'En verimli saat 02:00',
    description: 'Gece saatleri seni canlandırır. Yaratıcılık, derin sohbet, sessizlik — hepsi orada. Sabah 8 alarmı düşmanın.',
    emoji: '🦉',
    shareText: 'Gece Yarısı Ruhu çıktım — gece bana ait 🦉',
  ),
  ResultProfile(
    id: 'esnek_ruh', categoryId: 'sabah_gece',
    title: 'Esnek Ruh', subtitle: 'Programa göre yaşarım',
    description: 'Sabit bir rutinin yok. Bazen sabah, bazen gece — duruma uyum sağlarsın.',
    emoji: '🌗',
    shareText: 'Esnek Ruh çıktım — sabah da gece de bana uyar 🌗',
  ),
  ResultProfile(
    id: 'rutin_sever', categoryId: 'sabah_gece',
    title: 'Rutin Sever', subtitle: 'Aynı saat, aynı kahve, aynı huzur',
    description: 'Belirli bir akış içinde mutlusun. Hafta içi hafta sonu fark etmez, vücudun saatini biliyor.',
    emoji: '⏰',
    shareText: 'Rutin Sever çıktım — düzen benim huzurum ⏰',
  ),

  // ===== SOSYAL =====
  ResultProfile(
    id: 'sosyal_kelebek', categoryId: 'sosyal',
    title: 'Sosyal Kelebek', subtitle: 'Kalabalık benim yakıtım',
    description: 'Tanıştığın herkesle 5 dakikada arkadaş olursun. Etkinlik, parti, geniş çevre — enerjini orada bulursun.',
    emoji: '🦋',
    shareText: 'Sosyal Kelebek çıktım — kalabalık beni doldurur 🦋',
  ),
  ResultProfile(
    id: 'secici_sosyal', categoryId: 'sosyal',
    title: 'Seçici Sosyal', subtitle: 'Az ama öz',
    description: 'Geniş çevre yerine yakın halka. Tanıştığın herkesle değil, seçtiğin birkaç kişiyle derin ilişki kurarsın.',
    emoji: '🌿',
    shareText: 'Seçici Sosyal çıktım — kalitenin sayısı önemli değil 🌿',
  ),
  ResultProfile(
    id: 'ev_insani', categoryId: 'sosyal',
    title: 'Ev İnsanı', subtitle: 'Evde olmak gibisi yok',
    description: 'Sosyallikten kaçmazsın ama kendi alanın kutsal. Plansız kalabalık enerjini boşaltır.',
    emoji: '🏠',
    shareText: 'Ev İnsanı çıktım — en sevdiğim yer evim 🏠',
  ),
  ResultProfile(
    id: 'dengeleyici', categoryId: 'sosyal',
    title: 'Dengeleyici', subtitle: 'Bir gece dışarı, bir gece içeri',
    description: 'Tek tip insan değilsin. Bazen kalabalık, bazen yalnızlık — ihtiyaca göre değişir.',
    emoji: '⚖️',
    shareText: 'Dengeleyici çıktım — her ikisi de bana iyi gelir ⚖️',
  ),

  // ===== ALIŞVERİŞ =====
  ResultProfile(
    id: 'anlik_alici', categoryId: 'alisveris',
    title: 'Anlık Alıcı', subtitle: 'Görmek, almak, mutlu olmak',
    description: 'Karar süresi 30 saniye. Hoşuna giden şeyi hemen alırsın, sonra düşünürsün. Hayat kısa.',
    emoji: '⚡',
    shareText: 'Anlık Alıcı çıktım — bugünü yaşa! ⚡',
  ),
  ResultProfile(
    id: 'minimalist', categoryId: 'alisveris',
    title: 'Minimalist', subtitle: 'Az eşya, çok özgürlük',
    description: 'Az şey, kaliteli şey. Dolabın da hayatın da yalın. Almadan önce "buna gerçekten ihtiyacım var mı?" sorusu.',
    emoji: '🤍',
    shareText: 'Minimalist çıktım — daha az daha çoktur 🤍',
  ),
  ResultProfile(
    id: 'koleksiyoner', categoryId: 'alisveris',
    title: 'Koleksiyoner', subtitle: 'Her şeyin bir hikâyesi var',
    description: 'Topladığın şeylerin ardında anlam var. Eşyalara duygu yüklersin, kolay kolay atmazsın.',
    emoji: '📚',
    shareText: 'Koleksiyoner çıktım — her parça bir hikâye 📚',
  ),
  ResultProfile(
    id: 'stratejik_alici', categoryId: 'alisveris',
    title: 'Stratejik Alıcı', subtitle: 'Araştır, karşılaştır, al',
    description: 'Karar öncesi tüm seçenekleri tararsın. İndirim, yorum, fiyat — hepsi mercek altında.',
    emoji: '🔍',
    shareText: 'Stratejik Alıcı çıktım — her kuruşun hesabı var 🔍',
  ),

  // ===== ÇALIŞMA =====
  ResultProfile(
    id: 'deep_focus', categoryId: 'calisma',
    title: 'Deep Focus', subtitle: 'Kapı kapalı, telefon sessiz',
    description: 'Tek bir şeye saatlerce odaklanırsın. Bölünmek seni yavaşlatır, derin işin tadı bambaşka.',
    emoji: '🎯',
    shareText: 'Deep Focus çıktım — derin iş, derin sonuç 🎯',
  ),
  ResultProfile(
    id: 'yaratici_kaos', categoryId: 'calisma',
    title: 'Yaratıcı Kaos', subtitle: 'Düzensizlik benim doğal habitatım',
    description: 'Masa karışık, fikirler savruk ama sonuç ortaya çıkar. Doğrusal değil, sıçramalı çalışırsın.',
    emoji: '🎨',
    shareText: 'Yaratıcı Kaos çıktım — düzensizlik bana yarıyor 🎨',
  ),
  ResultProfile(
    id: 'planli_makine', categoryId: 'calisma',
    title: 'Planlı Makine', subtitle: 'Liste varsa, ben varım',
    description: 'To-do liste, takvim, sistem — her şey yerli yerinde. Saatlerle, deadline\'larla aran iyi.',
    emoji: '📋',
    shareText: 'Planlı Makine çıktım — liste tamam, iş tamam 📋',
  ),
  ResultProfile(
    id: 'esnek_uretici', categoryId: 'calisma',
    title: 'Esnek Üretici', subtitle: 'Akışa bırakırım, iş çıkar',
    description: 'Katı plan da değil, kaos da değil. Akışa göre yön değiştirir, üretmeye devam edersin.',
    emoji: '🌊',
    shareText: 'Esnek Üretici çıktım — akışa uyum sağlar, iş çıkarır 🌊',
  ),

  // ===== TEKNOLOJİ =====
  ResultProfile(
    id: 'erken_benimseyici', categoryId: 'teknoloji',
    title: 'Erken Benimseyici', subtitle: 'Yeni çıkan? Bende olsun',
    description: 'Teknolojinin ön safındasın. Yeni cihaz, yeni uygulama — denemekten çekinmezsin.',
    emoji: '🚀',
    shareText: 'Erken Benimseyici çıktım — geleceği önden yaşarım 🚀',
  ),
  ResultProfile(
    id: 'dijital_minimalist', categoryId: 'teknoloji',
    title: 'Dijital Minimalist', subtitle: 'Daha az ekran, daha çok yaşam',
    description: 'Telefonu sınırlarsın, bildirimler sustur. Dijital alanı temizleyince hayatın berraklaştığını biliyorsun.',
    emoji: '🌱',
    shareText: 'Dijital Minimalist çıktım — ekrandan uzak, hayata yakın 🌱',
  ),
  ResultProfile(
    id: 'icerik_uretici', categoryId: 'teknoloji',
    title: 'İçerik Üreticisi', subtitle: 'Paylaştıkça çoğalır',
    description: 'Tüketmekten çok üretirsin. Story, video, blog — fikirlerini paylaşmak doğal bir refleks.',
    emoji: '🎬',
    shareText: 'İçerik Üreticisi çıktım — paylaşmak benim dilim 🎬',
  ),
  ResultProfile(
    id: 'pasif_tuketici', categoryId: 'teknoloji',
    title: 'Pasif Tüketici', subtitle: 'İzlerim, severim, susarım',
    description: 'Sosyal medyada gözlemcisin. Beğenir, kaydeder, paylaşmazsın. Üretmek senin tarzın değil.',
    emoji: '👀',
    shareText: 'Pasif Tüketici çıktım — sessizce izleyenlerden 👀',
  ),

  // ===== YAŞAM ALANI =====
  ResultProfile(
    id: 'sehir_cocugu', categoryId: 'yasam',
    title: 'Şehir Çocuğu', subtitle: 'Trafik bile bana güzel',
    description: 'Şehrin enerjisi seni besler. 7/24 hareket, kafe, etkinlik. Sessizlik fazla gelir.',
    emoji: '🏙️',
    shareText: 'Şehir Çocuğu çıktım — şehir benim ritmim 🏙️',
  ),
  ResultProfile(
    id: 'doga_sever', categoryId: 'yasam',
    title: 'Doğa Sever', subtitle: 'Ağaç sesi, kuş sesi, huzur',
    description: 'Şehrin gürültüsünden kaçarsın. Yeşil, açık alan, sessizlik — hayalindeki yaşam.',
    emoji: '🌲',
    shareText: 'Doğa Sever çıktım — şehir benim için fazla 🌲',
  ),
  ResultProfile(
    id: 'minimal_yasam', categoryId: 'yasam',
    title: 'Minimal Yaşam', subtitle: 'Sade evde sade kafa',
    description: 'Az eşya, geniş alan. Düzen senin için sadece estetik değil, zihinsel rahatlık.',
    emoji: '⚪',
    shareText: 'Minimal Yaşam çıktım — sade hayat huzur ⚪',
  ),
  ResultProfile(
    id: 'sicak_yuva', categoryId: 'yasam',
    title: 'Sıcak Yuva', subtitle: 'Ev = duygu',
    description: 'Evin her köşesi anılarla dolu. Eşya çok ama her birinin hikâyesi var. Konfor > estetik.',
    emoji: '🕯️',
    shareText: 'Sıcak Yuva çıktım — evim duygularımın aynası 🕯️',
  ),
];
```

- [ ] **Step 2: Verify analyzer**

Run: `dart analyze lib/features/result/data/result_profiles.dart`
Expected: No issues.

- [ ] **Step 3: Commit**

```bash
git add lib/features/result/data/result_profiles.dart
git commit -m "feat(content): add 32 category-specific result profiles"
```

---

### Task 11: Write all 96 questions

**Files:**
- Modify: `lib/features/quiz/data/quiz_seed_data.dart`

Bu en uzun task. Her kategori için **12 soru** yaz, her sorunun **2 seçeneği** olsun, her seçenek bir profil ID'sine `resultKey` ile bağlansın. Profil ID'leri Task 10'daki profil ID'leridir (örn. `foodie_kasif`, `konfor_sever`).

- [ ] **Step 1: Replace quizSeedQuestions list completely**

`quiz_seed_data.dart`'taki mevcut `quizSeedQuestions` listesini sil, yerine 96 soru yaz. Şablon:

```dart
const List<QuizQuestion> quizSeedQuestions = [
  // ===== YEMEK (12 soru) =====
  QuizQuestion(
    id: 'yemek_q1', categoryId: 'yemek',
    text: 'Restoran seçimi senin elinde — hangisi?',
    options: [
      QuizOption(id: 'yemek_q1a', text: 'Hiç gitmediğim bir mutfak (Tay, Etiyopya, Kore)', resultKey: 'foodie_kasif'),
      QuizOption(id: 'yemek_q1b', text: 'Severek gittiğim bilindik bir yer', resultKey: 'konfor_sever'),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q2', categoryId: 'yemek',
    text: 'Akşam yemeği vakti, sen ne yaparsın?',
    options: [
      QuizOption(id: 'yemek_q2a', text: 'Tarif açıp pişiririm, mutfakta vakit geçirmek keyifli', resultKey: 'ev_ascisi'),
      QuizOption(id: 'yemek_q2b', text: 'Arkadaşları çağırırım, dışarda buluşuruz', resultKey: 'sosyal_gurme'),
    ],
  ),
  // ... 10 soru daha (yemek_q3 - yemek_q12)
  // Her sorunun 2 seçeneği farklı profil ID'sine resultKey ile bağlansın.
  // 12 soru üzerinden her profil ~6 kez gözükmeli (dengeli dağıtım).

  // ===== SEYAHAT (12 soru) - resultKey: ozgur_gezgin / luks_turist / kultur_avcisi / rahat_tatilci =====
  // ... 12 soru ...

  // ===== SABAH/GECE (12) - erken_kus / gece_yarisi_ruhu / esnek_ruh / rutin_sever =====
  // ... 12 soru ...

  // ===== SOSYAL (12) - sosyal_kelebek / secici_sosyal / ev_insani / dengeleyici =====
  // ... 12 soru ...

  // ===== ALIŞVERİŞ (12) - anlik_alici / minimalist / koleksiyoner / stratejik_alici =====
  // ... 12 soru ...

  // ===== ÇALIŞMA (12) - deep_focus / yaratici_kaos / planli_makine / esnek_uretici =====
  // ... 12 soru ...

  // ===== TEKNOLOJİ (12) - erken_benimseyici / dijital_minimalist / icerik_uretici / pasif_tuketici =====
  // ... 12 soru ...

  // ===== YAŞAM (12) - sehir_cocugu / doga_sever / minimal_yasam / sicak_yuva =====
  // ... 12 soru ...
];
```

**Yazım kuralları:**
- Her kategori için 12 soru
- Her soru exact 2 seçenek
- Her seçenek bir `resultKey` (o kategorinin 4 profilinden biri)
- Dağıtım dengeli olsun: her profil 12 soruda yaklaşık 6 kez seçenek olarak çıksın (her soru farklı 2 profil için seçenek sunar — değişimi kategori boyunca dengele)
- ID format: `{kategori}_q{n}` ve `{kategori}_q{n}{a|b}`
- Sorular Türkçe, samimi ton, "would you rather" formatında ya da seçim sorusu

- [ ] **Step 2: Verify analyzer**

Run: `dart analyze lib/features/quiz/data/quiz_seed_data.dart`
Expected: No issues.

- [ ] **Step 3: Verify counts**

Run:
```bash
grep -c "QuizQuestion(" lib/features/quiz/data/quiz_seed_data.dart
```
Expected: 96.

```bash
grep -c "QuizCategory(" lib/features/quiz/data/quiz_seed_data.dart
```
Expected: 8.

- [ ] **Step 4: Commit**

```bash
git add lib/features/quiz/data/quiz_seed_data.dart
git commit -m "feat(content): add 96 quiz questions across 8 categories"
```

---

## Phase 3 — Logic & Screens

### Task 12: Update QuizController with categoryId

**Files:**
- Modify: `lib/features/quiz/providers/quiz_controller.dart`

- [ ] **Step 1: Read current controller**

Read `lib/features/quiz/providers/quiz_controller.dart`. Hangi NotifierProvider olduğunu tespit et.

- [ ] **Step 2: Add categoryId filtering**

Mevcut Notifier'ı `family` versiyonuna dönüştür (veya state'e categoryId ekle). En temiz yol family kullanmak:

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/quiz_seed_data.dart';
import '../models/quiz_question.dart';

class QuizState {
  final List<QuizQuestion> questions;
  final int currentIndex;
  final Map<String, String> answers;

  const QuizState({required this.questions, this.currentIndex = 0, this.answers = const {}});

  QuizState copyWith({List<QuizQuestion>? questions, int? currentIndex, Map<String, String>? answers}) =>
    QuizState(
      questions: questions ?? this.questions,
      currentIndex: currentIndex ?? this.currentIndex,
      answers: answers ?? this.answers,
    );
}

class QuizController extends FamilyNotifier<QuizState, String> {
  @override
  QuizState build(String categoryId) {
    final qs = quizSeedQuestions.where((q) => q.categoryId == categoryId).toList();
    return QuizState(questions: qs);
  }

  void selectOption(String optionId) {
    final q = state.questions[state.currentIndex];
    final newAnswers = {...state.answers, q.id: optionId};
    state = state.copyWith(answers: newAnswers);
  }

  void nextQuestion() {
    if (state.currentIndex < state.questions.length - 1) {
      state = state.copyWith(currentIndex: state.currentIndex + 1);
    }
  }

  void reset() {
    state = QuizState(questions: state.questions);
  }
}

final quizControllerProvider =
    NotifierProvider.family<QuizController, QuizState, String>(QuizController.new);
```

Not: Mevcut `QuizController`'da farklı method/field adları varsa, mevcut isimleri koru ve sadece `build()` ile filtreleme ekle.

- [ ] **Step 3: Commit**

```bash
git add lib/features/quiz/providers/quiz_controller.dart
git commit -m "feat(quiz): filter questions by categoryId via Riverpod family"
```

---

### Task 13: Update QuizScreen to accept categoryId

**Files:**
- Modify: `lib/features/quiz/quiz_screen.dart`

- [ ] **Step 1: Read current screen**

Read `lib/features/quiz/quiz_screen.dart`. Mevcut yapıyı anla.

- [ ] **Step 2: Add categoryId param**

Class definition'ı güncelle:

```dart
class QuizScreen extends ConsumerWidget {
  final String categoryId;
  const QuizScreen({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizControllerProvider(categoryId));
    final controller = ref.read(quizControllerProvider(categoryId).notifier);
    // ...mevcut build içeriği, ama tüm provider erişimleri family kullanacak şekilde güncellenir
    // navigasyonda: context.go('/result/$categoryId')
  }
}
```

Tüm `quizControllerProvider` referanslarına `(categoryId)` ekle. Son sorudan sonra `context.go('/result/$categoryId')` ile yönlendir.

- [ ] **Step 3: Commit**

```bash
git add lib/features/quiz/quiz_screen.dart
git commit -m "feat(quiz): pass categoryId to controller and result navigation"
```

---

### Task 14: Update ResultCalculator with categoryId

**Files:**
- Modify: `lib/features/result/services/result_calculator.dart`
- Create: `test/features/result/services/result_calculator_test.dart`

- [ ] **Step 1: Write failing test**

```dart
// test/features/result/services/result_calculator_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:would_you_rather_app/features/quiz/models/quiz_question.dart';
import 'package:would_you_rather_app/features/quiz/models/quiz_option.dart';
import 'package:would_you_rather_app/features/result/services/result_calculator.dart';

void main() {
  test('returns profile matching most-voted resultKey for category', () {
    final questions = [
      QuizQuestion(id: 'q1', categoryId: 'yemek', text: '', options: [
        QuizOption(id: 'q1a', text: '', resultKey: 'foodie_kasif'),
        QuizOption(id: 'q1b', text: '', resultKey: 'konfor_sever'),
      ]),
      QuizQuestion(id: 'q2', categoryId: 'yemek', text: '', options: [
        QuizOption(id: 'q2a', text: '', resultKey: 'foodie_kasif'),
        QuizOption(id: 'q2b', text: '', resultKey: 'sosyal_gurme'),
      ]),
    ];
    final answers = {'q1': 'q1a', 'q2': 'q2a'};

    final profile = const ResultCalculator().calculate(questions, answers, 'yemek');

    expect(profile.id, 'foodie_kasif');
  });

  test('falls back to first profile of category when no answers', () {
    final profile = const ResultCalculator().calculate([], {}, 'yemek');
    expect(profile.categoryId, 'yemek');
  });
}
```

- [ ] **Step 2: Run test (verify fail)**

Run: `flutter test test/features/result/services/result_calculator_test.dart`
Expected: FAIL — method signature mismatch.

- [ ] **Step 3: Update calculator**

```dart
import '../../quiz/models/quiz_question.dart';
import '../models/result_profile.dart';
import '../data/result_profiles.dart';

class ResultCalculator {
  const ResultCalculator();

  ResultProfile calculate(
    List<QuizQuestion> questions,
    Map<String, String> answers,
    String categoryId,
  ) {
    final categoryProfiles = resultProfiles.where((p) => p.categoryId == categoryId).toList();
    final scores = <String, int>{};

    for (final q in questions) {
      final optionId = answers[q.id];
      if (optionId == null) continue;
      final option = q.options.firstWhere((o) => o.id == optionId);
      final key = option.resultKey;
      if (key == null) continue;
      scores[key] = (scores[key] ?? 0) + 1;
    }

    if (scores.isEmpty) return categoryProfiles.first;

    final winnerKey = scores.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
    return categoryProfiles.firstWhere(
      (p) => p.id == winnerKey,
      orElse: () => categoryProfiles.first,
    );
  }
}
```

- [ ] **Step 4: Run test (verify pass)**

Run: `flutter test test/features/result/services/result_calculator_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/features/result/services/result_calculator.dart test/features/result/services/result_calculator_test.dart
git commit -m "feat(result): filter calculator by categoryId with tests"
```

---

### Task 15: Create ResultShareCard widget

**Files:**
- Create: `lib/features/result/widgets/result_share_card.dart`

- [ ] **Step 1: Write the widget**

Story formatı (1080×1920 oranı simulasyonu) için bir kart:

```dart
import 'package:flutter/material.dart';
import '../models/result_profile.dart';
import '../../quiz/models/quiz_category.dart';

class ResultShareCard extends StatelessWidget {
  final ResultProfile profile;
  final QuizCategory category;
  const ResultShareCard({super.key, required this.profile, required this.category});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 540,
        height: 960,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [category.color, category.color.withOpacity(0.7)],
          ),
        ),
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(category.emoji, style: const TextStyle(fontSize: 48)),
            const SizedBox(height: 8),
            Text(
              category.title.toUpperCase(),
              style: const TextStyle(
                color: Colors.white70, fontSize: 14, letterSpacing: 2, fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 48),
            Text(profile.emoji, style: const TextStyle(fontSize: 96)),
            const SizedBox(height: 24),
            Text(
              profile.title,
              style: const TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold, height: 1.1),
            ),
            const SizedBox(height: 16),
            Text(
              profile.subtitle,
              style: const TextStyle(color: Colors.white, fontSize: 22, fontStyle: FontStyle.italic),
            ),
            const Spacer(),
            const Text(
              'Bu mu, O mu?',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/result/widgets/result_share_card.dart
git commit -m "feat(result): add ResultShareCard for visual sharing"
```

---

### Task 16: Update ResultScreen with screenshot share

**Files:**
- Modify: `lib/features/result/result_screen.dart`

- [ ] **Step 1: Read current ResultScreen**

Read `lib/features/result/result_screen.dart`.

- [ ] **Step 2: Refactor to ConsumerWidget with categoryId + screenshot**

```dart
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';   // (gerekirse — yoksa bytes paylaş)
import 'dart:io';
import '../quiz/data/quiz_seed_data.dart';
import '../quiz/providers/quiz_controller.dart';
import 'data/result_profiles.dart';
import 'services/result_calculator.dart';
import 'widgets/result_profile_card.dart';
import 'widgets/result_share_card.dart';
import '../history/history_controller.dart';

class ResultScreen extends ConsumerStatefulWidget {
  final String categoryId;
  const ResultScreen({super.key, required this.categoryId});

  @override
  ConsumerState<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> {
  final _shotController = ScreenshotController();
  bool _saved = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizControllerProvider(widget.categoryId));
    final category = quizCategories.firstWhere((c) => c.id == widget.categoryId);

    if (state.answers.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Henüz cevap yok'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => context.go('/'),
                child: const Text('Ana sayfa'),
              ),
            ],
          ),
        ),
      );
    }

    final profile = const ResultCalculator().calculate(state.questions, state.answers, widget.categoryId);

    if (!_saved) {
      _saved = true;
      ref.read(historyStoreProvider).record(widget.categoryId, profile.id);
    }

    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ResultProfileCard(profile: profile, answeredCount: state.answers.length),
            // Off-screen render edilecek paylaşım kartı
            Offstage(
              offstage: true,
              child: Screenshot(
                controller: _shotController,
                child: ResultShareCard(profile: profile, category: category),
              ),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () async {
                final Uint8List? bytes = await _shotController.capture(pixelRatio: 2.0);
                if (bytes == null) return;
                final dir = await getTemporaryDirectory();
                final file = File('${dir.path}/result_${widget.categoryId}.png');
                await file.writeAsBytes(bytes);
                await Share.shareXFiles([XFile(file.path)], text: profile.shareText);
              },
              icon: const Icon(Icons.share),
              label: const Text('Sonucumu paylaş'),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {
                ref.read(quizControllerProvider(widget.categoryId).notifier).reset();
                context.go('/quiz/${widget.categoryId}');
              },
              child: const Text('Tekrar Oyna'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => context.go('/'),
              child: const Text('Ana sayfa'),
            ),
          ],
        ),
      ),
    );
  }
}
```

Not: `path_provider` paketi `screenshot` paketinin transitive dependency'sidir ama emin olmak için `pubspec.yaml`'a `path_provider: ^2.1.0` ekle, `flutter pub get` çalıştır.

- [ ] **Step 3: Add path_provider to pubspec**

```yaml
  path_provider: ^2.1.0
```

Run: `flutter pub get`

- [ ] **Step 4: Commit**

```bash
git add lib/features/result/result_screen.dart pubspec.yaml pubspec.lock
git commit -m "feat(result): add visual share card with screenshot capture"
```

---

### Task 17: Create FeaturedCategoryCard widget

**Files:**
- Create: `lib/features/home/widgets/featured_category_card.dart`

- [ ] **Step 1: Write widget**

```dart
import 'package:flutter/material.dart';
import '../../quiz/models/quiz_category.dart';

class FeaturedCategoryCard extends StatelessWidget {
  final QuizCategory category;
  final VoidCallback onTap;
  const FeaturedCategoryCard({super.key, required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [category.color, category.color.withOpacity(0.75)],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(category.emoji, style: const TextStyle(fontSize: 36)),
            const SizedBox(height: 12),
            Text(
              category.title,
              style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              category.description,
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('Başla →', style: TextStyle(color: Colors.white, fontSize: 13)),
            ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/home/widgets/featured_category_card.dart
git commit -m "feat(home): add FeaturedCategoryCard widget"
```

---

### Task 18: Create MiniCategoryCard widget

**Files:**
- Create: `lib/features/home/widgets/mini_category_card.dart`

- [ ] **Step 1: Write widget**

```dart
import 'package:flutter/material.dart';
import '../../quiz/models/quiz_category.dart';

class MiniCategoryCard extends StatelessWidget {
  final QuizCategory category;
  final bool completed;
  final VoidCallback onTap;
  const MiniCategoryCard({super.key, required this.category, required this.onTap, this.completed = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: category.color.withOpacity(0.85),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(category.emoji, style: const TextStyle(fontSize: 22)),
                const SizedBox(height: 6),
                Text(
                  category.title,
                  style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),
                  maxLines: 2, overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            if (completed)
              const Positioned(
                top: 0, right: 0,
                child: Icon(Icons.check_circle, color: Colors.white, size: 20),
              ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/home/widgets/mini_category_card.dart
git commit -m "feat(home): add MiniCategoryCard widget with completion indicator"
```

---

### Task 19: Redesign HomeScreen

**Files:**
- Modify: `lib/features/home/home_screen.dart`

- [ ] **Step 1: Replace with C layout (featured + mini grid + random)**

```dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../quiz/data/quiz_seed_data.dart';
import '../history/history_controller.dart';
import 'widgets/featured_category_card.dart';
import 'widgets/mini_category_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featured = quizCategories[Random().nextInt(quizCategories.length)];
    final others = quizCategories.where((c) => c.id != featured.id).toList();
    final historyAsync = ref.watch(historyMapProvider);
    final history = historyAsync.value ?? const {};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bu mu, O mu?'),
        actions: [
          IconButton(
            icon: const Icon(Icons.casino),
            tooltip: 'Rastgele test',
            onPressed: () {
              final random = quizCategories[Random().nextInt(quizCategories.length)];
              context.go('/quiz/${random.id}');
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FeaturedCategoryCard(
              category: featured,
              onTap: () => context.go('/quiz/${featured.id}'),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.6,
              ),
              itemCount: others.length,
              itemBuilder: (c, i) {
                final cat = others[i];
                return MiniCategoryCard(
                  category: cat,
                  completed: history.containsKey(cat.id),
                  onTap: () => context.go('/quiz/${cat.id}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/home/home_screen.dart
git commit -m "feat(home): redesign with featured card + mini grid + random button"
```

---

### Task 20: Update SettingsScreen with dark mode toggle

**Files:**
- Modify: `lib/features/settings/settings_screen.dart`

- [ ] **Step 1: Add toggle**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/theme_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeControllerProvider);
    final controller = ref.read(themeControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Ayarlar')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Tema'),
            subtitle: Text(switch (mode) {
              ThemeMode.system => 'Sistem',
              ThemeMode.light => 'Açık',
              ThemeMode.dark => 'Koyu',
            }),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.system, groupValue: mode,
            onChanged: (v) => controller.set(v!),
            title: const Text('Sistem'),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light, groupValue: mode,
            onChanged: (v) => controller.set(v!),
            title: const Text('Açık'),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark, groupValue: mode,
            onChanged: (v) => controller.set(v!),
            title: const Text('Koyu'),
          ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/features/settings/settings_screen.dart
git commit -m "feat(settings): add theme mode selection (system/light/dark)"
```

---

### Task 21: Wire app.dart with ThemeMode + onboarding redirect

**Files:**
- Modify: `lib/app/app.dart`

- [ ] **Step 1: Read current app.dart**

Read `lib/app/app.dart`.

- [ ] **Step 2: Update to ConsumerWidget with theme + redirect**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../features/settings/providers/theme_controller.dart';
import 'router.dart';
import 'theme.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});
  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  bool? _onboardingDone;

  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    final prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() => _onboardingDone = prefs.getBool('onboarding_done') ?? false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_onboardingDone == null) {
      return MaterialApp(
        theme: lightTheme, darkTheme: darkTheme,
        themeMode: ref.watch(themeControllerProvider),
        home: const Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ref.watch(themeControllerProvider),
      // İlk açılışsa onboarding'e yönlendir
      builder: (context, child) {
        if (!_onboardingDone! && ModalRoute.of(context)?.settings.name != '/onboarding') {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            appRouter.go('/onboarding');
          });
        }
        return child!;
      },
    );
  }
}
```

Not: `main.dart`'ta `runApp(ProviderScope(child: App()))` olduğundan emin ol — yoksa ekle.

- [ ] **Step 3: Verify main.dart has ProviderScope**

Read `lib/main.dart`. ProviderScope yoksa ekle:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/app.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
```

- [ ] **Step 4: Commit**

```bash
git add lib/app/app.dart lib/main.dart
git commit -m "feat(app): wire ThemeMode and onboarding redirect"
```

---

## Phase 4 — Verification

### Task 22: Full analyze + test pass

- [ ] **Step 1: Run analyzer**

Run: `cd /home/bayrak/projects/wouldyouratherapp && dart analyze`
Expected: No issues. Hata varsa düzelt, commit at, tekrar çalıştır.

- [ ] **Step 2: Run all tests**

Run: `flutter test`
Expected: Tüm testler geçiyor.

- [ ] **Step 3: Build debug APK (compile sanity check)**

Run: `flutter build apk --debug`
Expected: Build başarılı.

---

### Task 23: Manual smoke test

- [ ] **Step 1: Run on device/emulator**

Run: `flutter run`

- [ ] **Step 2: Smoke test checklist**

Doğrula:
- [ ] İlk açılış → onboarding 3 slayt → Başla → home
- [ ] Home: featured kart + 7 mini kart + 🎲 + ⚙️ butonları görünüyor
- [ ] Featured kart tıkla → /quiz/{categoryId} → 12 soru cevapla → /result/{categoryId} → profil görünür
- [ ] Sonuç ekranı: paylaş butonu → görsel kart paylaşımı (PNG)
- [ ] Tekrar Oyna → quiz baştan
- [ ] Ana sayfa → home
- [ ] Tamamlanan kategori mini kartında ✓ göstergesi
- [ ] Settings → tema "Koyu" → uygulama dark mode
- [ ] Settings → tema "Sistem" → cihaz teması
- [ ] 🎲 butonu farklı kategoriler açıyor
- [ ] Uygulamayı kapat & aç: onboarding TEKRAR gösterilmiyor
- [ ] Uygulamayı kapat & aç: tamamlanan testlerin işaretleri kalıcı

- [ ] **Step 3: Commit final state**

Eğer manual test sırasında düzeltme gerektiyse:
```bash
git add -A
git commit -m "fix: manual smoke test corrections"
```

---

## Self-Review Checklist

- [ ] Spec'teki 8 kategori tanımı kodda var (Task 9)
- [ ] Spec'teki 32 profil kodda var (Task 10)
- [ ] Spec'teki 96 soru tanımı kodda var (Task 11)
- [ ] Görsel paylaşım kartı çalışıyor (Task 15-16)
- [ ] Onboarding flag'i SharedPreferences'a yazılıyor (Task 5, 21)
- [ ] Test geçmişi mini kartlarda gösteriliyor (Task 18, 19)
- [ ] Dark mode sistem temasını takip ediyor (Task 7, 21)
- [ ] Random butonu çalışıyor (Task 19)
- [ ] Tüm route'lar categoryId param destekliyor (Task 4)

---

## Notes

- 96 soru yazımı (Task 11) en uzun ve yaratıcı task. Subagent kullanılırsa ayrı bir task olarak izole edilebilir.
- `screenshot` paketi `path_provider`'a bağımlıdır; transitive olarak gelmiyorsa Task 16'da ekleniyor.
- Mevcut tek test (20 sorulu) Task 11'de tamamen değişiyor; backward compatibility yok (zaten gerekmez).
- Tüm yeni route'lar mevcut go_router yapısını izliyor — büyük refactor yok.

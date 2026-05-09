import 'package:flutter/material.dart';

import '../models/quiz_category.dart';
import '../models/quiz_option.dart';
import '../models/quiz_question.dart';

const quizCategories = <QuizCategory>[
  const QuizCategory(
    id: 'yemek',
    title: 'Yemek & İçecek',
    description:
        'Yemek ve içecek tercihleriniz kişiliğiniz hakkında neler söylüyor? Bu bölümde lezzetli seçimler yaparak, mutfak zevkiniz ve damak tadınız hakkında bilgi edineceğiz. Soğuk mu sıcak mı, tatlı mı tuzlu mu? Tercihleriniz sizi tanımlıyor.',
    emoji: '🍕',
    color: Colors.orange,
  ),
  const QuizCategory(
    id: 'seyahat',
    title: 'Seyahat Tarzı',
    description:
        'Dünyayı keşfetme tarzınız benzersiz midir? Planlı mı yoksa spontane mi geziyorsunuz? Bu kategoride, seyahat deneyimleriniz ve macera ruhunuz hakkında derinlemesine bilgi alacağız. Gidebileceğiniz yerleri ve tercih ettiğiniz deneyimleri keşfedelim.',
    emoji: '✈️',
    color: Colors.blue,
  ),
  const QuizCategory(
    id: 'sabah_gece',
    title: 'Sabah mı, Gece mi?',
    description:
        'Gün ışığında mı yoksa gece karanlığında mı daha canlı hissediyorsunuz? Erken saatlerde mi yoksa geç saatlerde mi enerjik oluyorsunuz? Bu bölüm, zaman algınız ve enerji ritiminizi keşfederek iki zıt güce sizin hangi tarafa ait olduğunuzu ortaya koyacak.',
    emoji: '🌙',
    color: Colors.indigo,
  ),
  const QuizCategory(
    id: 'sosyal',
    title: 'Sosyal Hayat',
    description:
        'İnsanlarla ilişkileriniz nasıldır? Çevre dostu mı, seçici mi? Bu kategoride, sosyal kişiliğiniz ve insanlarla etkileşim biçiminiz ortaya çıkacak. İnsanları çekeceğiniz, yineleyen partileri mi yoksa sakin buluşmaları mı tercih edersiniz?',
    emoji: '🎉',
    color: Colors.pink,
  ),
  const QuizCategory(
    id: 'alisveris',
    title: 'Alışveriş & Para',
    description:
        'Paranız ve alışveriş alışkanlıklarınız hakkında neler söylüyor? Planlı bütçe mi yoksa dürtüsel harcamalar mı? Bu bölümde, finansal kişiliğiniz ve tüketim davranışınız hakkında derinlemesine bakacağız. Tasarruf etmeyi seviyorum mu, yoksa harcamaktan hoşlanıyorum mu?',
    emoji: '🛍️',
    color: Colors.amber,
  ),
  const QuizCategory(
    id: 'calisma',
    title: 'Çalışma Tarzı',
    description:
        'İş ortamında nasıl bir kişiliğiniz var? Takım oyuncusu musunuz, yoksa bağımsız çalışmayı tercih mi ediyorsunuz? Bu kategoride, profesyonel kimliğiniz, üretkenlik alışkanlıklarınız ve iş yönetimi tarzınız hakkında bilgi alacağız.',
    emoji: '💻',
    color: Colors.deepPurple,
  ),
  const QuizCategory(
    id: 'teknoloji',
    title: 'Teknoloji & Sosyal Medya',
    description:
        'Dijital dünyada ne kadar yerleşik olmuşsunuz? Teknoloji savunucusu mısınız yoksa teknolojiye şüpheyle mi bakıyorsunuz? Bu bölümde, sosyal medya alışkanlıklarınız ve teknoloji kullanımı hakkında keşifler yapacağız. Bağlı mısınız, yoksa uzak mısınız?',
    emoji: '📱',
    color: Colors.green,
  ),
  const QuizCategory(
    id: 'yasam',
    title: 'Yaşam Alanı',
    description:
        'Yaşamak istediğiniz ortam ve şehir hayatı tercihleriniz nelerdir? Şehrin kalabalığında mı yoksa sakin köyün sessizliğinde mi olmayı istersiniz? Bu kategoride, yaşam biçiminiz ve ideal yaşam ortamınız hakkında derinlemesine bilgi alacağız.',
    emoji: '🏙️',
    color: Colors.teal,
  ),
];

const quizSeedQuestions = <QuizQuestion>[
  // ── YEMEK ────────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'yemek_q1',
    categoryId: 'yemek',
    text: 'Yeni bir restoranda ne yaparsın?',
    options: [
      QuizOption(
        id: 'yemek_q1_a',
        text: 'Menüyü deşifre ettikten sonra en ilginç yemeği denerim',
        resultKey: 'foodie',
      ),
      QuizOption(
        id: 'yemek_q1_b',
        text: 'Güvenilir klasik seçeneklerden birini sipariş ederim',
        resultKey: 'comfort',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q2',
    categoryId: 'yemek',
    text: 'Akşam yemeği için ne yapmayı tercih edersin?',
    options: [
      QuizOption(
        id: 'yemek_q2_a',
        text: 'Evde sıfırdan yeni bir tarif denerim',
        resultKey: 'home_chef',
      ),
      QuizOption(
        id: 'yemek_q2_b',
        text: 'Arkadaşlarla güzel bir mekâna giderim',
        resultKey: 'social_gourmet',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q3',
    categoryId: 'yemek',
    text: 'Sofranda en önemli şey nedir?',
    options: [
      QuizOption(
        id: 'yemek_q3_a',
        text: 'Yemeğin lezzeti ve sunumu',
        resultKey: 'foodie',
      ),
      QuizOption(
        id: 'yemek_q3_b',
        text: 'Sofradaki sohbet ve ortam',
        resultKey: 'social_gourmet',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q4',
    categoryId: 'yemek',
    text: 'Hafta sonları kahvaltı nasıl olsun?',
    options: [
      QuizOption(
        id: 'yemek_q4_a',
        text: 'Kendi yaptığım ev kahvaltısı',
        resultKey: 'home_chef',
      ),
      QuizOption(
        id: 'yemek_q4_b',
        text: 'Sevilen klasik bir kahvaltı mekanı',
        resultKey: 'comfort',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q5',
    categoryId: 'yemek',
    text: 'Yabancı bir mutfağı keşfedeceksin, nasıl yaklaşırsın?',
    options: [
      QuizOption(
        id: 'yemek_q5_a',
        text: 'Heyecanla en alışılmadık yemeği seçerim',
        resultKey: 'foodie',
      ),
      QuizOption(
        id: 'yemek_q5_b',
        text: 'Tanıdık malzemeler içereni ararım',
        resultKey: 'comfort',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q6',
    categoryId: 'yemek',
    text: 'Doğum günü yemeği nerede olsun?',
    options: [
      QuizOption(
        id: 'yemek_q6_a',
        text: 'Evde kalabalık bir sofra hazırlarım',
        resultKey: 'home_chef',
      ),
      QuizOption(
        id: 'yemek_q6_b',
        text: 'Özel bir restoranda kutlarım',
        resultKey: 'social_gourmet',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q7',
    categoryId: 'yemek',
    text: 'Markette alışveriş yaparken ne düşünürsün?',
    options: [
      QuizOption(
        id: 'yemek_q7_a',
        text: 'Bu malzemelerle ne pişirebilirim diye hayal kurarım',
        resultKey: 'home_chef',
      ),
      QuizOption(
        id: 'yemek_q7_b',
        text: 'Her zamanki listeyi takip ederim',
        resultKey: 'comfort',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q8',
    categoryId: 'yemek',
    text: 'Yeni açılan trendy bir restoranı ne zaman denersin?',
    options: [
      QuizOption(
        id: 'yemek_q8_a',
        text: 'İlk fırsatta arkadaşlarımla giderim',
        resultKey: 'social_gourmet',
      ),
      QuizOption(
        id: 'yemek_q8_b',
        text: 'Yorumlar iyiyse ileride belki denerim',
        resultKey: 'comfort',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q9',
    categoryId: 'yemek',
    text: 'Yemek yaparken müzik açar mısın?',
    options: [
      QuizOption(
        id: 'yemek_q9_a',
        text: 'Evet, mutfak benim sahneme dönüşür',
        resultKey: 'home_chef',
      ),
      QuizOption(
        id: 'yemek_q9_b',
        text: 'Pek girmem mutfağa, sipariş tercihimdir',
        resultKey: 'social_gourmet',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q10',
    categoryId: 'yemek',
    text: 'Yemekte en önemli kriter nedir?',
    options: [
      QuizOption(
        id: 'yemek_q10_a',
        text: 'Alışılmamış tatlar ve özgün kombinasyonlar',
        resultKey: 'foodie',
      ),
      QuizOption(
        id: 'yemek_q10_b',
        text: 'Güzel vakit geçirdiğim insanlarla paylaşmak',
        resultKey: 'social_gourmet',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q11',
    categoryId: 'yemek',
    text: 'Seyahatte yemek konusunda nasılsın?',
    options: [
      QuizOption(
        id: 'yemek_q11_a',
        text: 'Yerel sokak lezzetlerini araştırarak bulur ve denerim',
        resultKey: 'foodie',
      ),
      QuizOption(
        id: 'yemek_q11_b',
        text: 'Otel restoranı veya bilinen zincirleri tercih ederim',
        resultKey: 'comfort',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yemek_q12',
    categoryId: 'yemek',
    text: 'Misafirlerin geldiğinde ne yaparsın?',
    options: [
      QuizOption(
        id: 'yemek_q12_a',
        text: 'Özel bir menü hazırlayıp kendim pişiririm',
        resultKey: 'home_chef',
      ),
      QuizOption(
        id: 'yemek_q12_b',
        text: 'Güzel bir mekâna rezervasyon yaptırırım',
        resultKey: 'social_gourmet',
      ),
    ],
  ),

  // ── SEYAHAT ──────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'seyahat_q1',
    categoryId: 'seyahat',
    text: 'Tatil planını kim yapmalı?',
    options: [
      QuizOption(
        id: 'seyahat_q1_a',
        text: 'Ben yaparım; oteller, rotalar, aktiviteler tamam',
        resultKey: 'luxury_tourist',
      ),
      QuizOption(
        id: 'seyahat_q1_b',
        text: 'Bilet al, gidince bakarız',
        resultKey: 'free_traveler',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q2',
    categoryId: 'seyahat',
    text: 'Yeni bir şehirde ilk durak neresi?',
    options: [
      QuizOption(
        id: 'seyahat_q2_a',
        text: 'Tarihi mahalleler ve yerel müzeler',
        resultKey: 'culture_hunter',
      ),
      QuizOption(
        id: 'seyahat_q2_b',
        text: 'Otel odası, biraz dinleneyim önce',
        resultKey: 'relax_vacationer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q3',
    categoryId: 'seyahat',
    text: 'Konaklama tercihini belirleyen nedir?',
    options: [
      QuizOption(
        id: 'seyahat_q3_a',
        text: 'Butik otel ya da yerel pansiyon, özgün olsun',
        resultKey: 'culture_hunter',
      ),
      QuizOption(
        id: 'seyahat_q3_b',
        text: 'Her şey dahil, konforlu bir tatil köyü',
        resultKey: 'relax_vacationer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q4',
    categoryId: 'seyahat',
    text: 'Tatilde fotoğraf çekmek sana göre mi?',
    options: [
      QuizOption(
        id: 'seyahat_q4_a',
        text: 'Yüzlerce fotoğraf çekerim, anıları ölümsüzleştiririm',
        resultKey: 'luxury_tourist',
      ),
      QuizOption(
        id: 'seyahat_q4_b',
        text: 'Anı yaşamak daha önemli, telefonu kapatırım',
        resultKey: 'relax_vacationer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q5',
    categoryId: 'seyahat',
    text: 'Seyahatte en çok neye zaman ayırırsın?',
    options: [
      QuizOption(
        id: 'seyahat_q5_a',
        text: 'Yerel halkla konuşmak ve kültürü anlamak',
        resultKey: 'culture_hunter',
      ),
      QuizOption(
        id: 'seyahat_q5_b',
        text: 'Plajda kitap okumak veya spa',
        resultKey: 'relax_vacationer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q6',
    categoryId: 'seyahat',
    text: 'Rotanı değiştiren bir ipucu geldi, ne yaparsın?',
    options: [
      QuizOption(
        id: 'seyahat_q6_a',
        text: 'Planı bırakır, yeni rotaya saparım',
        resultKey: 'free_traveler',
      ),
      QuizOption(
        id: 'seyahat_q6_b',
        text: 'Mevcut planımı korur, bir sonraki seyahate saklarım',
        resultKey: 'luxury_tourist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q7',
    categoryId: 'seyahat',
    text: 'Bagaj hazırlarken nasıl birisin?',
    options: [
      QuizOption(
        id: 'seyahat_q7_a',
        text: 'Küçük sırt çantasıyla yola çıkarım',
        resultKey: 'free_traveler',
      ),
      QuizOption(
        id: 'seyahat_q7_b',
        text: 'Her ihtimale karşı büyük bavul hazırlarım',
        resultKey: 'luxury_tourist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q8',
    categoryId: 'seyahat',
    text: 'Tatil bütçen nasıl şekillenir?',
    options: [
      QuizOption(
        id: 'seyahat_q8_a',
        text: 'Düşük bütçeyle uzun süre gezerim',
        resultKey: 'free_traveler',
      ),
      QuizOption(
        id: 'seyahat_q8_b',
        text: 'Az giderim ama konfordan ödün vermem',
        resultKey: 'luxury_tourist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q9',
    categoryId: 'seyahat',
    text: 'Turistik yerler hakkında ne düşünürsün?',
    options: [
      QuizOption(
        id: 'seyahat_q9_a',
        text: 'Kalabalık turistik yerleri atlayıp saklı köşeleri ararım',
        resultKey: 'culture_hunter',
      ),
      QuizOption(
        id: 'seyahat_q9_b',
        text: 'Popüler yerleri görmeden geçmem',
        resultKey: 'luxury_tourist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q10',
    categoryId: 'seyahat',
    text: 'Uçuş sırasında zamanını nasıl geçirirsin?',
    options: [
      QuizOption(
        id: 'seyahat_q10_a',
        text: 'Yatarım, tatil dinlenmekle başlamalı',
        resultKey: 'relax_vacationer',
      ),
      QuizOption(
        id: 'seyahat_q10_b',
        text: 'Gideceğim yeri araştırır, notlar alırım',
        resultKey: 'culture_hunter',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q11',
    categoryId: 'seyahat',
    text: 'Tatilden döndükten sonra ne hissedersin?',
    options: [
      QuizOption(
        id: 'seyahat_q11_a',
        text: 'Dinlenmiş ve yenilenmiş, hazırım',
        resultKey: 'relax_vacationer',
      ),
      QuizOption(
        id: 'seyahat_q11_b',
        text: 'Heyecanlıyım, bir sonraki seyahati planlıyorum',
        resultKey: 'free_traveler',
      ),
    ],
  ),
  QuizQuestion(
    id: 'seyahat_q12',
    categoryId: 'seyahat',
    text: 'Yurt dışı tatilinde dil sorunu yaşarsan?',
    options: [
      QuizOption(
        id: 'seyahat_q12_a',
        text: 'El kol işareti, çeviri uygulaması, hallederim',
        resultKey: 'free_traveler',
      ),
      QuizOption(
        id: 'seyahat_q12_b',
        text: 'İngilizce konuşulan veya tur rehberli seyahatleri tercih ederim',
        resultKey: 'luxury_tourist',
      ),
    ],
  ),

  // ── SABAH_GECE ───────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'sabah_gece_q1',
    categoryId: 'sabah_gece',
    text: 'Alarm olmadan ne zaman uyanırsın?',
    options: [
      QuizOption(
        id: 'sabah_gece_q1_a',
        text: 'Güneşle birlikte, 6-7 arası',
        resultKey: 'early_bird',
      ),
      QuizOption(
        id: 'sabah_gece_q1_b',
        text: 'Öğlene yakın, geç kalkmak hakkım',
        resultKey: 'night_owl',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q2',
    categoryId: 'sabah_gece',
    text: 'En verimli saatin hangisi?',
    options: [
      QuizOption(
        id: 'sabah_gece_q2_a',
        text: 'Sabahın erken saatleri',
        resultKey: 'early_bird',
      ),
      QuizOption(
        id: 'sabah_gece_q2_b',
        text: 'Gece sessizliği',
        resultKey: 'night_owl',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q3',
    categoryId: 'sabah_gece',
    text: 'Hafta sonu sabahları ne yaparsın?',
    options: [
      QuizOption(
        id: 'sabah_gece_q3_a',
        text: 'Erken kalkar, güzel bir sabah rutini yaşarım',
        resultKey: 'routine_lover',
      ),
      QuizOption(
        id: 'sabah_gece_q3_b',
        text: 'Haftanın yorgunluğunu atarım, geç kalkarım',
        resultKey: 'night_owl',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q4',
    categoryId: 'sabah_gece',
    text: 'Sabah kahveni veya çayını içerken ne yaparsın?',
    options: [
      QuizOption(
        id: 'sabah_gece_q4_a',
        text: 'Günü planlar, yapılacaklar listesi yaparım',
        resultKey: 'routine_lover',
      ),
      QuizOption(
        id: 'sabah_gece_q4_b',
        text: 'Saatlere bakmadan keyifle oturup düşünürüm',
        resultKey: 'flexible',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q5',
    categoryId: 'sabah_gece',
    text: 'Gece geç saatte bir davet gelirse?',
    options: [
      QuizOption(
        id: 'sabah_gece_q5_a',
        text: 'Sabah erken kalkacağım, kabul etmem',
        resultKey: 'early_bird',
      ),
      QuizOption(
        id: 'sabah_gece_q5_b',
        text: 'Gece benim vaktim, tabii ki giderim',
        resultKey: 'night_owl',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q6',
    categoryId: 'sabah_gece',
    text: 'Uyku düzenin nasıl?',
    options: [
      QuizOption(
        id: 'sabah_gece_q6_a',
        text: 'Her gün aynı saatte yatar ve kalkarım',
        resultKey: 'routine_lover',
      ),
      QuizOption(
        id: 'sabah_gece_q6_b',
        text: 'Günün akışına göre değişir',
        resultKey: 'flexible',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q7',
    categoryId: 'sabah_gece',
    text: 'Sabah ilk uyandığında ne hissedersin?',
    options: [
      QuizOption(
        id: 'sabah_gece_q7_a',
        text: 'Taze ve enerjik, güne hazırım',
        resultKey: 'early_bird',
      ),
      QuizOption(
        id: 'sabah_gece_q7_b',
        text: 'Biraz daha uyumak isterim hep',
        resultKey: 'night_owl',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q8',
    categoryId: 'sabah_gece',
    text: 'Gece geç saatlerde ne yaparsın?',
    options: [
      QuizOption(
        id: 'sabah_gece_q8_a',
        text: 'En yaratıcı anlarım, çalışır veya okur',
        resultKey: 'night_owl',
      ),
      QuizOption(
        id: 'sabah_gece_q8_b',
        text: 'Yatmış olurum, erken kalkacağım',
        resultKey: 'early_bird',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q9',
    categoryId: 'sabah_gece',
    text: 'Sabah rutinin var mı?',
    options: [
      QuizOption(
        id: 'sabah_gece_q9_a',
        text: 'Evet, spor, meditasyon, kahvaltı, hepsi var',
        resultKey: 'routine_lover',
      ),
      QuizOption(
        id: 'sabah_gece_q9_b',
        text: 'Hayır, her sabah farklı geçer',
        resultKey: 'flexible',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q10',
    categoryId: 'sabah_gece',
    text: 'Enerji pikini günün hangi bölümünde yaşarsın?',
    options: [
      QuizOption(
        id: 'sabah_gece_q10_a',
        text: 'Sabah 8-12 arası, o saatlerde uçarım',
        resultKey: 'early_bird',
      ),
      QuizOption(
        id: 'sabah_gece_q10_b',
        text: 'Gece 22 sonrası, gecenin ilerleyen saatlerinde',
        resultKey: 'night_owl',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q11',
    categoryId: 'sabah_gece',
    text: 'Erken toplantı veya geç randevu hangisi daha iyi?',
    options: [
      QuizOption(
        id: 'sabah_gece_q11_a',
        text: 'Erken toplantı, sabah her şey daha net',
        resultKey: 'early_bird',
      ),
      QuizOption(
        id: 'sabah_gece_q11_b',
        text: 'Geç randevu, sabahı kendime ayırırım',
        resultKey: 'flexible',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sabah_gece_q12',
    categoryId: 'sabah_gece',
    text: 'Tatilde uyku düzenin bozulursa?',
    options: [
      QuizOption(
        id: 'sabah_gece_q12_a',
        text: 'Sorun değil, tatil esnektir',
        resultKey: 'flexible',
      ),
      QuizOption(
        id: 'sabah_gece_q12_b',
        text: 'Rahatsız olurum, düzene dönmeye çalışırım',
        resultKey: 'routine_lover',
      ),
    ],
  ),

  // ── SOSYAL ───────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'sosyal_q1',
    categoryId: 'sosyal',
    text: 'Büyük bir partide nasıl davranırsın?',
    options: [
      QuizOption(
        id: 'sosyal_q1_a',
        text: 'Her masaya uğrar, herkesle tanışırım',
        resultKey: 'social_butterfly',
      ),
      QuizOption(
        id: 'sosyal_q1_b',
        text: 'Yakın arkadaşlarımla bir köşede kalırım',
        resultKey: 'selective_social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q2',
    categoryId: 'sosyal',
    text: 'Hafta sonu planın nasıl şekillenir?',
    options: [
      QuizOption(
        id: 'sosyal_q2_a',
        text: 'Evde yalnız veya bir iki kişiyle sakin geçer',
        resultKey: 'homebody',
      ),
      QuizOption(
        id: 'sosyal_q2_b',
        text: 'Birileriyle mutlaka bir şeyler yaparım',
        resultKey: 'social_butterfly',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q3',
    categoryId: 'sosyal',
    text: 'Tanımadığın biriyle sohbet başlatmak?',
    options: [
      QuizOption(
        id: 'sosyal_q3_a',
        text: 'Doğal geliyor, ben başlatırım çoğunlukla',
        resultKey: 'social_butterfly',
      ),
      QuizOption(
        id: 'sosyal_q3_b',
        text: 'Enerji ister, çok yapmam',
        resultKey: 'homebody',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q4',
    categoryId: 'sosyal',
    text: 'Sosyal medyada paylaşım nasılsın?',
    options: [
      QuizOption(
        id: 'sosyal_q4_a',
        text: 'Sık paylaşırım, hayatımı aktif tutarım',
        resultKey: 'social_butterfly',
      ),
      QuizOption(
        id: 'sosyal_q4_b',
        text: 'Nadiren, sadece özel anları paylaşırım',
        resultKey: 'selective_social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q5',
    categoryId: 'sosyal',
    text: 'Arkadaş sayısı mı kalitesi mi?',
    options: [
      QuizOption(
        id: 'sosyal_q5_a',
        text: 'Az ama öz, birkaç derin bağ yeter',
        resultKey: 'selective_social',
      ),
      QuizOption(
        id: 'sosyal_q5_b',
        text: 'Ne kadar çok insan o kadar güzel',
        resultKey: 'social_butterfly',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q6',
    categoryId: 'sosyal',
    text: 'Uzun süre yalnız kalınca ne olur?',
    options: [
      QuizOption(
        id: 'sosyal_q6_a',
        text: 'Şarj olurum, ihtiyacım olan budur',
        resultKey: 'homebody',
      ),
      QuizOption(
        id: 'sosyal_q6_b',
        text: 'Huzursuz olurum, insanlara ihtiyacım var',
        resultKey: 'social_butterfly',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q7',
    categoryId: 'sosyal',
    text: 'İş dışında insanlarla zaman geçirmek sana göre mi?',
    options: [
      QuizOption(
        id: 'sosyal_q7_a',
        text: 'Evet, hem iş hem sosyal hayat bir arada olabilir',
        resultKey: 'balancer',
      ),
      QuizOption(
        id: 'sosyal_q7_b',
        text: 'İş ve sosyal hayatı birbirinden ayırırım',
        resultKey: 'selective_social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q8',
    categoryId: 'sosyal',
    text: 'Sürpriz bir misafir gelirse?',
    options: [
      QuizOption(
        id: 'sosyal_q8_a',
        text: 'Harika, sohbet etmek için fırsat',
        resultKey: 'social_butterfly',
      ),
      QuizOption(
        id: 'sosyal_q8_b',
        text: 'Rahatsız olurum, önceden haber vermeli',
        resultKey: 'homebody',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q9',
    categoryId: 'sosyal',
    text: 'Sosyal enerji dengeni nasıl kurarsın?',
    options: [
      QuizOption(
        id: 'sosyal_q9_a',
        text: 'Hem sosyal hem yalnız zaman ayarlayarak',
        resultKey: 'balancer',
      ),
      QuizOption(
        id: 'sosyal_q9_b',
        text: 'Ne kadar çok insanla olursam o kadar enerjik olurum',
        resultKey: 'social_butterfly',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q10',
    categoryId: 'sosyal',
    text: 'Grup sohbetlerine katılım nasılsın?',
    options: [
      QuizOption(
        id: 'sosyal_q10_a',
        text: 'Grubu canlandıran, enerji katan biriyimdir',
        resultKey: 'social_butterfly',
      ),
      QuizOption(
        id: 'sosyal_q10_b',
        text: 'Dinleyen, gözlemleyen rolü daha rahat gelir',
        resultKey: 'selective_social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q11',
    categoryId: 'sosyal',
    text: 'Arkadaşlarınla nasıl iletişim kurarsın?',
    options: [
      QuizOption(
        id: 'sosyal_q11_a',
        text: 'Sık yazışır ve planlar yaparım',
        resultKey: 'social_butterfly',
      ),
      QuizOption(
        id: 'sosyal_q11_b',
        text: 'Az ama özlü, derin sohbetleri tercih ederim',
        resultKey: 'selective_social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'sosyal_q12',
    categoryId: 'sosyal',
    text: 'İdeal bir gün nasıl geçer?',
    options: [
      QuizOption(
        id: 'sosyal_q12_a',
        text: 'Evde, kendi rutinimde, sakin ve konforlu',
        resultKey: 'homebody',
      ),
      QuizOption(
        id: 'sosyal_q12_b',
        text: 'Hem kişisel vaktim hem de sosyal anlar içerir',
        resultKey: 'balancer',
      ),
    ],
  ),

  // ── ALIŞVERİŞ ────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'alisveris_q1',
    categoryId: 'alisveris',
    text: 'Mağazaya girince ne yaparsın?',
    options: [
      QuizOption(
        id: 'alisveris_q1_a',
        text: 'Listemi takip eder, sadece gerekeni alırım',
        resultKey: 'strategic',
      ),
      QuizOption(
        id: 'alisveris_q1_b',
        text: 'Gözüme çarpanı alırım, liste yazmam',
        resultKey: 'impulsive',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q2',
    categoryId: 'alisveris',
    text: 'Yeni bir teknoloji ürünü çıktı, ne yaparsın?',
    options: [
      QuizOption(
        id: 'alisveris_q2_a',
        text: 'Gerçekten ihtiyacım var mı diye düşünürüm',
        resultKey: 'minimalist',
      ),
      QuizOption(
        id: 'alisveris_q2_b',
        text: 'Koleksiyonuma katılır, hemen alırım',
        resultKey: 'collector',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q3',
    categoryId: 'alisveris',
    text: 'İndirim sezonunda nasılsın?',
    options: [
      QuizOption(
        id: 'alisveris_q3_a',
        text: 'Önceden listelediklerimi fırsatla alırım',
        resultKey: 'strategic',
      ),
      QuizOption(
        id: 'alisveris_q3_b',
        text: 'İndirim beni çarpıyor, bazen gereğinden fazla alırım',
        resultKey: 'impulsive',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q4',
    categoryId: 'alisveris',
    text: 'Eşya saydığında neler görürsün?',
    options: [
      QuizOption(
        id: 'alisveris_q4_a',
        text: 'Az ama işlevsel şeyler, minimalist yaşam',
        resultKey: 'minimalist',
      ),
      QuizOption(
        id: 'alisveris_q4_b',
        text: 'Kategorize edilmiş koleksiyonlar ve özel eşyalar',
        resultKey: 'collector',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q5',
    categoryId: 'alisveris',
    text: 'Online alışveriş yaparken?',
    options: [
      QuizOption(
        id: 'alisveris_q5_a',
        text: 'Fiyat karşılaştırır, en iyisini seçerim',
        resultKey: 'strategic',
      ),
      QuizOption(
        id: 'alisveris_q5_b',
        text: 'Sepete atarım, sonra bakarım gerekliyse öderim',
        resultKey: 'impulsive',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q6',
    categoryId: 'alisveris',
    text: 'Dolabında fazladan eşya olunca?',
    options: [
      QuizOption(
        id: 'alisveris_q6_a',
        text: 'Temizler, az eşya huzur verir',
        resultKey: 'minimalist',
      ),
      QuizOption(
        id: 'alisveris_q6_b',
        text: 'Saklarım, bir gün lazım olabilir',
        resultKey: 'collector',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q7',
    categoryId: 'alisveris',
    text: 'Pahalı bir şey almadan önce ne yaparsın?',
    options: [
      QuizOption(
        id: 'alisveris_q7_a',
        text: 'Haftalarca araştırır, yorumları okur, sonra karar veririm',
        resultKey: 'strategic',
      ),
      QuizOption(
        id: 'alisveris_q7_b',
        text: 'Canım istedi mi alırım, geri kalanı düşünmem',
        resultKey: 'impulsive',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q8',
    categoryId: 'alisveris',
    text: 'Bir kategoride kaç tane olsun?',
    options: [
      QuizOption(
        id: 'alisveris_q8_a',
        text: 'Bir tane yeter, en iyisini seçerim',
        resultKey: 'minimalist',
      ),
      QuizOption(
        id: 'alisveris_q8_b',
        text: 'Farklı renk veya model olsa da alırım',
        resultKey: 'collector',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q9',
    categoryId: 'alisveris',
    text: 'Bütçeni nasıl yönetirsin?',
    options: [
      QuizOption(
        id: 'alisveris_q9_a',
        text: 'Aylık plan yapar, kategorilere ayırırım',
        resultKey: 'strategic',
      ),
      QuizOption(
        id: 'alisveris_q9_b',
        text: 'Sevdiğim şeye harcamaktan çekinmem',
        resultKey: 'impulsive',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q10',
    categoryId: 'alisveris',
    text: 'Giyim dolabın nasıl?',
    options: [
      QuizOption(
        id: 'alisveris_q10_a',
        text: 'Kapsül gardırop, az ama çok kombinli',
        resultKey: 'minimalist',
      ),
      QuizOption(
        id: 'alisveris_q10_b',
        text: 'Her sezon yenilenir, çok seçenek severim',
        resultKey: 'collector',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q11',
    categoryId: 'alisveris',
    text: 'Hediye alırken nasıl seçim yaparsın?',
    options: [
      QuizOption(
        id: 'alisveris_q11_a',
        text: 'Kişiye özel, uzun düşünülmüş bir şey alırım',
        resultKey: 'strategic',
      ),
      QuizOption(
        id: 'alisveris_q11_b',
        text: 'Güzel görünen, dikkat çeken bir şey bulunca alırım',
        resultKey: 'impulsive',
      ),
    ],
  ),
  QuizQuestion(
    id: 'alisveris_q12',
    categoryId: 'alisveris',
    text: 'Eski eşyalarını ne yaparsın?',
    options: [
      QuizOption(
        id: 'alisveris_q12_a',
        text: 'Satarım ya da bağışlarım, yer açarım',
        resultKey: 'minimalist',
      ),
      QuizOption(
        id: 'alisveris_q12_b',
        text: 'Saklarım, anı olarak ya da koleksiyona katarım',
        resultKey: 'collector',
      ),
    ],
  ),

  // ── ÇALIŞMA ──────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'calisma_q1',
    categoryId: 'calisma',
    text: 'Bir göreve başlarken nasılsın?',
    options: [
      QuizOption(
        id: 'calisma_q1_a',
        text: 'Önce plan yapar, adım adım ilerlerim',
        resultKey: 'planned_machine',
      ),
      QuizOption(
        id: 'calisma_q1_b',
        text: 'Dalarım, şekillenir gider',
        resultKey: 'creative_chaos',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q2',
    categoryId: 'calisma',
    text: 'Çalışma ortamın nasıl olmalı?',
    options: [
      QuizOption(
        id: 'calisma_q2_a',
        text: 'Sessiz, düzenli ve dağınıklık olmadan',
        resultKey: 'deep_focus',
      ),
      QuizOption(
        id: 'calisma_q2_b',
        text: 'Biraz kaos olsun, yaratıcılık o ortamda açılır',
        resultKey: 'creative_chaos',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q3',
    categoryId: 'calisma',
    text: 'Proje teslim tarihi yaklaşıyor, ne yaparsın?',
    options: [
      QuizOption(
        id: 'calisma_q3_a',
        text: 'Çok önce bitirmiş olurum, son dakika stresi nedir bilmem',
        resultKey: 'planned_machine',
      ),
      QuizOption(
        id: 'calisma_q3_b',
        text: 'Baskı altında daha iyi çalışırım, son anlar verimli',
        resultKey: 'flexible_producer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q4',
    categoryId: 'calisma',
    text: 'Çalışırken kesintiler nasıl etkiliyor seni?',
    options: [
      QuizOption(
        id: 'calisma_q4_a',
        text: 'Odak kırılır, verimim düşer, zor toparlarım',
        resultKey: 'deep_focus',
      ),
      QuizOption(
        id: 'calisma_q4_b',
        text: 'Sorun değil, birkaç işi aynı anda yürütebilirim',
        resultKey: 'flexible_producer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q5',
    categoryId: 'calisma',
    text: 'Yeni bir proje fikri gelince?',
    options: [
      QuizOption(
        id: 'calisma_q5_a',
        text: 'Heyecanlanır, hemen not alır ve dalarım',
        resultKey: 'creative_chaos',
      ),
      QuizOption(
        id: 'calisma_q5_b',
        text: 'Değerlendiririm, sonra planlayarak başlarım',
        resultKey: 'planned_machine',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q6',
    categoryId: 'calisma',
    text: 'Günlük çalışma programın nasıl?',
    options: [
      QuizOption(
        id: 'calisma_q6_a',
        text: 'Her gün aynı bloklar, tutarlı rutin',
        resultKey: 'planned_machine',
      ),
      QuizOption(
        id: 'calisma_q6_b',
        text: 'O günün enerjisine göre şekillenir',
        resultKey: 'flexible_producer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q7',
    categoryId: 'calisma',
    text: 'Derin odak gerektiren bir iş yapıyorsun, ne olur?',
    options: [
      QuizOption(
        id: 'calisma_q7_a',
        text: 'Telefonu kapatır, bildirimler sıfırlanır, dünyanın geri kalanı yoktur',
        resultKey: 'deep_focus',
      ),
      QuizOption(
        id: 'calisma_q7_b',
        text: 'Müzik açık, belki kahve, paralelde başka şeyler de döner',
        resultKey: 'creative_chaos',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q8',
    categoryId: 'calisma',
    text: 'Takım çalışması mı bireysel mi?',
    options: [
      QuizOption(
        id: 'calisma_q8_a',
        text: 'Bireysel çalışırım, kendi hızımda ilerlerim',
        resultKey: 'deep_focus',
      ),
      QuizOption(
        id: 'calisma_q8_b',
        text: 'Ekiple olmak enerji verir, birlikte daha iyi üretiriz',
        resultKey: 'flexible_producer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q9',
    categoryId: 'calisma',
    text: 'Yapılacaklar listeni nasıl yönetirsin?',
    options: [
      QuizOption(
        id: 'calisma_q9_a',
        text: 'Dijital ya da kâğıt, detaylı liste şart',
        resultKey: 'planned_machine',
      ),
      QuizOption(
        id: 'calisma_q9_b',
        text: 'Kafamda tutarım, liste yazmak zaman kaybı',
        resultKey: 'creative_chaos',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q10',
    categoryId: 'calisma',
    text: 'Zor bir sorunla karşılaşınca?',
    options: [
      QuizOption(
        id: 'calisma_q10_a',
        text: 'Saatler boyunca o soruna odaklanır çözümü bulurum',
        resultKey: 'deep_focus',
      ),
      QuizOption(
        id: 'calisma_q10_b',
        text: 'Mola veririm, farklı bakış açısıyla dönerim',
        resultKey: 'flexible_producer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q11',
    categoryId: 'calisma',
    text: 'Çalışma araçların nasıl?',
    options: [
      QuizOption(
        id: 'calisma_q11_a',
        text: 'Minimalist kurulum, az ama işlevsel',
        resultKey: 'deep_focus',
      ),
      QuizOption(
        id: 'calisma_q11_b',
        text: 'Her türlü araç ve post-it notlar, kaotik ama verimli',
        resultKey: 'creative_chaos',
      ),
    ],
  ),
  QuizQuestion(
    id: 'calisma_q12',
    categoryId: 'calisma',
    text: 'Bir iş değişikliğinde nasıl uyum sağlarsın?',
    options: [
      QuizOption(
        id: 'calisma_q12_a',
        text: 'Önce yeni süreci anlayıp planlayarak adapte olurum',
        resultKey: 'planned_machine',
      ),
      QuizOption(
        id: 'calisma_q12_b',
        text: 'Hızla adapte olurum, değişim beni heyecanlandırır',
        resultKey: 'flexible_producer',
      ),
    ],
  ),

  // ── TEKNOLOJİ ────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'teknoloji_q1',
    categoryId: 'teknoloji',
    text: 'Yeni bir uygulama çıktı, ne yaparsın?',
    options: [
      QuizOption(
        id: 'teknoloji_q1_a',
        text: 'Beta sürümünü hemen indiririm',
        resultKey: 'early_adopter',
      ),
      QuizOption(
        id: 'teknoloji_q1_b',
        text: 'Gerçekten gerekli mi diye sorgulatırım',
        resultKey: 'digital_minimalist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q2',
    categoryId: 'teknoloji',
    text: 'Sosyal medyayı nasıl kullanırsın?',
    options: [
      QuizOption(
        id: 'teknoloji_q2_a',
        text: 'İçerik üretir, paylaşır, topluluk kurarım',
        resultKey: 'content_creator',
      ),
      QuizOption(
        id: 'teknoloji_q2_b',
        text: 'Sadece bakınırım, beğeniyle geçiririm',
        resultKey: 'passive_consumer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q3',
    categoryId: 'teknoloji',
    text: 'Telefonuna kaç uygulama yüklüsün?',
    options: [
      QuizOption(
        id: 'teknoloji_q3_a',
        text: 'Çok az, sadece kullandıklarım var',
        resultKey: 'digital_minimalist',
      ),
      QuizOption(
        id: 'teknoloji_q3_b',
        text: 'Her yeni uygulamayı deniyorum, çok var',
        resultKey: 'early_adopter',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q4',
    categoryId: 'teknoloji',
    text: 'Yeni bir akıllı cihaz çıktı, tepkin ne?',
    options: [
      QuizOption(
        id: 'teknoloji_q4_a',
        text: 'Özelliklerini araştırır, önceki modelle karşılaştırırım',
        resultKey: 'early_adopter',
      ),
      QuizOption(
        id: 'teknoloji_q4_b',
        text: 'Eskisi bozulmadan değiştirmem',
        resultKey: 'digital_minimalist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q5',
    categoryId: 'teknoloji',
    text: 'İçerik tüketirken nasılsın?',
    options: [
      QuizOption(
        id: 'teknoloji_q5_a',
        text: 'Saatlerce video veya podcast tüketirim',
        resultKey: 'passive_consumer',
      ),
      QuizOption(
        id: 'teknoloji_q5_b',
        text: 'Kendim içerik üretmek daha çok heyecan verir',
        resultKey: 'content_creator',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q6',
    categoryId: 'teknoloji',
    text: 'Dijital detoks yapabilir misin?',
    options: [
      QuizOption(
        id: 'teknoloji_q6_a',
        text: 'Evet, zaman zaman ekrandan uzaklaşmak sağlıklı',
        resultKey: 'digital_minimalist',
      ),
      QuizOption(
        id: 'teknoloji_q6_b',
        text: 'Zor, her şey dijitalde ve çok şey kaçırırım',
        resultKey: 'early_adopter',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q7',
    categoryId: 'teknoloji',
    text: 'Blog, video ya da podcast yapar mısın?',
    options: [
      QuizOption(
        id: 'teknoloji_q7_a',
        text: 'Evet veya yapmak isterim, paylaşmak seviyorum',
        resultKey: 'content_creator',
      ),
      QuizOption(
        id: 'teknoloji_q7_b',
        text: 'Hayır, izlemek yeterli benim için',
        resultKey: 'passive_consumer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q8',
    categoryId: 'teknoloji',
    text: 'Bildirimler kapalı mı açık mı?',
    options: [
      QuizOption(
        id: 'teknoloji_q8_a',
        text: 'Çoğu kapalı, kontrol ederim ne zaman istersem',
        resultKey: 'digital_minimalist',
      ),
      QuizOption(
        id: 'teknoloji_q8_b',
        text: 'Açık, her şeyi anlık takip ederim',
        resultKey: 'early_adopter',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q9',
    categoryId: 'teknoloji',
    text: 'Sosyal medya takipçi sayısı önemli mi?',
    options: [
      QuizOption(
        id: 'teknoloji_q9_a',
        text: 'Evet, içerik üreticisiyim ve büyümek istiyorum',
        resultKey: 'content_creator',
      ),
      QuizOption(
        id: 'teknoloji_q9_b',
        text: 'Hayır, takipçi için değil keyif için bakarım',
        resultKey: 'passive_consumer',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q10',
    categoryId: 'teknoloji',
    text: 'Yapay zeka araçlarını nasıl karşılıyorsun?',
    options: [
      QuizOption(
        id: 'teknoloji_q10_a',
        text: 'Hepsini denerim, verimliliğimi artırıyor',
        resultKey: 'early_adopter',
      ),
      QuizOption(
        id: 'teknoloji_q10_b',
        text: 'Temkinliyim, gerçekten işe yarıyorsa kullanırım',
        resultKey: 'digital_minimalist',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q11',
    categoryId: 'teknoloji',
    text: 'Bir içerik seni nasıl etkiler?',
    options: [
      QuizOption(
        id: 'teknoloji_q11_a',
        text: 'İzler, beğenir, devam ederim',
        resultKey: 'passive_consumer',
      ),
      QuizOption(
        id: 'teknoloji_q11_b',
        text: 'İlham alır, kendi yorumumu yapmak isterim',
        resultKey: 'content_creator',
      ),
    ],
  ),
  QuizQuestion(
    id: 'teknoloji_q12',
    categoryId: 'teknoloji',
    text: 'Ekran başında günde kaç saat geçirirsin?',
    options: [
      QuizOption(
        id: 'teknoloji_q12_a',
        text: 'Az tutmaya çalışırım, bilinçli kullanım önemli',
        resultKey: 'digital_minimalist',
      ),
      QuizOption(
        id: 'teknoloji_q12_b',
        text: 'Çok, hem üretim hem tüketim hem iletişim',
        resultKey: 'content_creator',
      ),
    ],
  ),

  // ── YAŞAM ────────────────────────────────────────────────────────────────
  QuizQuestion(
    id: 'yasam_q1',
    categoryId: 'yasam',
    text: 'Nerede yaşamak istersin?',
    options: [
      QuizOption(
        id: 'yasam_q1_a',
        text: 'Şehrin merkezinde, her şeye yürüme mesafesinde',
        resultKey: 'city_child',
      ),
      QuizOption(
        id: 'yasam_q1_b',
        text: 'Yeşillikler içinde, sakin bir köy veya kasaba',
        resultKey: 'nature_lover',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q2',
    categoryId: 'yasam',
    text: 'Evin nasıl dekore edilmeli?',
    options: [
      QuizOption(
        id: 'yasam_q2_a',
        text: 'Minimalist, temiz çizgiler, az eşya',
        resultKey: 'minimal_life',
      ),
      QuizOption(
        id: 'yasam_q2_b',
        text: 'Sıcak, bitkiler, kitaplar, anılar',
        resultKey: 'warm_home',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q3',
    categoryId: 'yasam',
    text: 'Hafta sonu sabahı en güzel nasıl başlar?',
    options: [
      QuizOption(
        id: 'yasam_q3_a',
        text: 'Açık hava, doğa yürüyüşü, temiz hava',
        resultKey: 'nature_lover',
      ),
      QuizOption(
        id: 'yasam_q3_b',
        text: 'Brunch için güzel bir kafe veya alışveriş',
        resultKey: 'city_child',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q4',
    categoryId: 'yasam',
    text: 'Eşya birikiyor, ne yaparsın?',
    options: [
      QuizOption(
        id: 'yasam_q4_a',
        text: 'Hepsini çıkarırım, yalnızca kullandığım kalır',
        resultKey: 'minimal_life',
      ),
      QuizOption(
        id: 'yasam_q4_b',
        text: 'Her eşyanın anlamı ve yeri vardır, saklarım',
        resultKey: 'warm_home',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q5',
    categoryId: 'yasam',
    text: 'Seyahat etmeden önce nereye gitmek istersin?',
    options: [
      QuizOption(
        id: 'yasam_q5_a',
        text: 'Kalabalık, canlı, kozmopolit bir şehre',
        resultKey: 'city_child',
      ),
      QuizOption(
        id: 'yasam_q5_b',
        text: 'Ormanlar, nehirler, dağlar, sessizlik',
        resultKey: 'nature_lover',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q6',
    categoryId: 'yasam',
    text: 'Ev ortamında neler olmazsa olmaz?',
    options: [
      QuizOption(
        id: 'yasam_q6_a',
        text: 'Huzur ve işlevsellik, her şey yerli yerinde',
        resultKey: 'minimal_life',
      ),
      QuizOption(
        id: 'yasam_q6_b',
        text: 'Koku, müzik, misafir sesi, sıcaklık',
        resultKey: 'warm_home',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q7',
    categoryId: 'yasam',
    text: 'Stres atmanın en iyi yolu?',
    options: [
      QuizOption(
        id: 'yasam_q7_a',
        text: 'Doğada yürüyüş, piknik, açık hava',
        resultKey: 'nature_lover',
      ),
      QuizOption(
        id: 'yasam_q7_b',
        text: 'Şehirde bir yerlere gitmek, alışveriş veya kafe',
        resultKey: 'city_child',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q8',
    categoryId: 'yasam',
    text: 'Yaşam alanında renk paleti nasıl olsun?',
    options: [
      QuizOption(
        id: 'yasam_q8_a',
        text: 'Nötr tonlar, beyaz, gri, bej',
        resultKey: 'minimal_life',
      ),
      QuizOption(
        id: 'yasam_q8_b',
        text: 'Sıcak renkler, toprak tonları, canlı aksan renkler',
        resultKey: 'warm_home',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q9',
    categoryId: 'yasam',
    text: 'İdeal komşuluk nasıl olmalı?',
    options: [
      QuizOption(
        id: 'yasam_q9_a',
        text: 'Herkesin kendi işiyle meşgul, mahrem',
        resultKey: 'minimal_life',
      ),
      QuizOption(
        id: 'yasam_q9_b',
        text: 'Kapı komşuları tanıyım, birlikte bir şeyler yapalım',
        resultKey: 'warm_home',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q10',
    categoryId: 'yasam',
    text: 'Evde bitkiler var mı?',
    options: [
      QuizOption(
        id: 'yasam_q10_a',
        text: 'Çok var, yeşillik olmadan olmaz',
        resultKey: 'nature_lover',
      ),
      QuizOption(
        id: 'yasam_q10_b',
        text: 'Yok veya az, bakım gerektiriyor',
        resultKey: 'minimal_life',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q11',
    categoryId: 'yasam',
    text: 'Akşam yemeği sonrası ne yaparsın?',
    options: [
      QuizOption(
        id: 'yasam_q11_a',
        text: 'Dışarıya çıkar, şehrin gece hayatını yaşarım',
        resultKey: 'city_child',
      ),
      QuizOption(
        id: 'yasam_q11_b',
        text: 'Evde sıcacık, kitap veya dizi ile geceyi kapatırım',
        resultKey: 'warm_home',
      ),
    ],
  ),
  QuizQuestion(
    id: 'yasam_q12',
    categoryId: 'yasam',
    text: 'Yaşam tarzında en önemli şey nedir?',
    options: [
      QuizOption(
        id: 'yasam_q12_a',
        text: 'Özgürlük ve sadelik, az şeyle huzur',
        resultKey: 'minimal_life',
      ),
      QuizOption(
        id: 'yasam_q12_b',
        text: 'Doğayla bağlantı, temiz hava ve sessizlik',
        resultKey: 'nature_lover',
      ),
    ],
  ),
];

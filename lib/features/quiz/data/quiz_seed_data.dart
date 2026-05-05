import 'package:flutter/material.dart';

import '../models/quiz_category.dart';
import '../models/quiz_option.dart';
import '../models/quiz_question.dart';

final quizCategories = <QuizCategory>[
  QuizCategory(
    id: 'yemek',
    title: 'Yemek & İçecek',
    description:
        'Yemek ve içecek tercihleriniz kişiliğiniz hakkında neler söylüyor? Bu bölümde lezzetli seçimler yaparak, mutfak zevkiniz ve damak tadınız hakkında bilgi edineceğiz. Soğuk mu sıcak mı, tatlı mı tuzlu mu? Tercihleriniz sizi tanımlıyor.',
    emoji: '🍕',
    color: Colors.orange,
  ),
  QuizCategory(
    id: 'seyahat',
    title: 'Seyahat Tarzı',
    description:
        'Dünyayı keşfetme tarzınız benzersiz midir? Planlı mı yoksa spontane mi geziyorsunuz? Bu kategoride, seyahat deneyimleriniz ve macera ruhunuz hakkında derinlemesine bilgi alacağız. Gidebileceğiniz yerleri ve tercih ettiğiniz deneyimleri keşfedelim.',
    emoji: '✈️',
    color: Colors.blue,
  ),
  QuizCategory(
    id: 'sabah_gece',
    title: 'Sabah mı, Gece mi?',
    description:
        'Gün ışığında mı yoksa gece karanlığında mı daha canlı hissediyorsunuz? Erken saatlerde mi yoksa geç saatlerde mi enerjik oluyorsunuz? Bu bölüm, zaman algınız ve enerji ritiminizi keşfederek iki zıt güce sizin hangi tarafa ait olduğunuzu ortaya koyacak.',
    emoji: '🌙',
    color: Colors.indigo,
  ),
  QuizCategory(
    id: 'sosyal',
    title: 'Sosyal Hayat',
    description:
        'İnsanlarla ilişkileriniz nasıldır? Çevre dostu mı, seçici mi? Bu kategoride, sosyal kişiliğiniz ve insanlarla etkileşim biçiminiz ortaya çıkacak. İnsanları çekeceğiniz, yineleyen partileri mi yoksa sakin buluşmaları mı tercih edersiniz?',
    emoji: '🎉',
    color: Colors.pink,
  ),
  QuizCategory(
    id: 'alisveris',
    title: 'Alışveriş & Para',
    description:
        'Paranız ve alışveriş alışkanlıklarınız hakkında neler söylüyor? Planlı bütçe mi yoksa dürtüsel harcamalar mı? Bu bölümde, finansal kişiliğiniz ve tüketim davranışınız hakkında derinlemesine bakacağız. Tasarruf etmeyi seviyorum mu, yoksa harcamaktan hoşlanıyorum mu?',
    emoji: '🛍️',
    color: Colors.amber,
  ),
  QuizCategory(
    id: 'calisma',
    title: 'Çalışma Tarzı',
    description:
        'İş ortamında nasıl bir kişiliğiniz var? Takım oyuncusu musunuz, yoksa bağımsız çalışmayı tercih mi ediyorsunuz? Bu kategoride, profesyonel kimliğiniz, üretkenlik alışkanlıklarınız ve iş yönetimi tarzınız hakkında bilgi alacağız.',
    emoji: '💻',
    color: Colors.deepPurple,
  ),
  QuizCategory(
    id: 'teknoloji',
    title: 'Teknoloji & Sosyal Medya',
    description:
        'Dijital dünyada ne kadar yerleşik olmuşsunuz? Teknoloji savunucusu mısınız yoksa teknolojiye şüpheyle mi bakıyorsunuz? Bu bölümde, sosyal medya alışkanlıklarınız ve teknoloji kullanımı hakkında keşifler yapacağız. Bağlı mısınız, yoksa uzak mısınız?',
    emoji: '📱',
    color: Colors.green,
  ),
  QuizCategory(
    id: 'yasam',
    title: 'Yaşam Alanı',
    description:
        'Yaşamak istediğiniz ortam ve şehir hayatı tercihleriniz nelerdir? Şehrin kalabalığında mı yoksa sakin köyün sessizliğinde mi olmayı istersiniz? Bu kategoride, yaşam biçiminiz ve ideal yaşam ortamınız hakkında derinlemesine bilgi alacağız.',
    emoji: '🏙️',
    color: Colors.teal,
  ),
];

const quizSeedQuestions = <QuizQuestion>[
  QuizQuestion(
    id: 'q1',
    categoryId: 'daily',
    text: 'Hangisini tercih ederdin?',
    options: [
      QuizOption(
        id: 'q1_a',
        text: 'Her zaman erken uyanmak',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q1_b',
        text: 'Her zaman geç yatmak',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q2',
    categoryId: 'daily',
    text: 'Bir yıl boyunca hangisi?',
    options: [
      QuizOption(
        id: 'q2_a',
        text: 'Sadece kahve içebilmek',
        resultKey: 'social',
      ),
      QuizOption(
        id: 'q2_b',
        text: 'Sadece çay içebilmek',
        resultKey: 'classic',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q3',
    categoryId: 'adventure',
    text: 'Hangisi daha iyi olurdu?',
    options: [
      QuizOption(
        id: 'q3_a',
        text: 'Zamanı durdurabilmek',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q3_b',
        text: 'Işınlanabilmek',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q4',
    categoryId: 'daily',
    text: 'Hangisini seçerdin?',
    options: [
      QuizOption(
        id: 'q4_a',
        text: 'Her filmi ilk kez izliyormuş gibi izlemek',
        resultKey: 'social',
      ),
      QuizOption(
        id: 'q4_b',
        text: 'Her kitabı tek okuyuşta ezberlemek',
        resultKey: 'classic',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q5',
    categoryId: 'daily',
    text: 'Sonsuza kadar hangisi?',
    options: [
      QuizOption(
        id: 'q5_a',
        text: 'Yaz mevsimi',
        resultKey: 'social',
      ),
      QuizOption(
        id: 'q5_b',
        text: 'Kış mevsimi',
        resultKey: 'calm',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q6',
    categoryId: 'social',
    text: 'Hafta sonu planı?',
    options: [
      QuizOption(
        id: 'q6_a',
        text: 'Kalabalık bir masa',
        resultKey: 'social',
      ),
      QuizOption(
        id: 'q6_b',
        text: 'Sakin bir köşe',
        resultKey: 'calm',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q7',
    categoryId: 'adventure',
    text: 'Tatil tarzın hangisine yakın?',
    options: [
      QuizOption(
        id: 'q7_a',
        text: 'Planlı ve net rota',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q7_b',
        text: 'Spontane kaçamak',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q8',
    categoryId: 'daily',
    text: 'Evde akşam tercihin?',
    options: [
      QuizOption(
        id: 'q8_a',
        text: 'Film ve battaniye',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q8_b',
        text: 'Dışarıda kısa bir plan',
        resultKey: 'social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q9',
    categoryId: 'adventure',
    text: 'Bir yere giderken hangisisin?',
    options: [
      QuizOption(
        id: 'q9_a',
        text: 'Erken varan',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q9_b',
        text: 'Son dakika yetişen',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q10',
    categoryId: 'daily',
    text: 'Çalışmak için ortam seç:',
    options: [
      QuizOption(
        id: 'q10_a',
        text: 'Sessiz ortam',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q10_b',
        text: 'Canlı ortam',
        resultKey: 'social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q11',
    categoryId: 'daily',
    text: 'Playlist seçimi?',
    options: [
      QuizOption(
        id: 'q11_a',
        text: 'Klasikler',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q11_b',
        text: 'Hareketli liste',
        resultKey: 'social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q12',
    categoryId: 'adventure',
    text: 'Yeni bir şey denemek?',
    options: [
      QuizOption(
        id: 'q12_a',
        text: 'Önce biraz araştırırım',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q12_b',
        text: 'Direkt denerim',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q13',
    categoryId: 'social',
    text: 'Sohbette daha çok hangisi?',
    options: [
      QuizOption(
        id: 'q13_a',
        text: 'Dinleyen taraf',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q13_b',
        text: 'Muhabbeti açan taraf',
        resultKey: 'social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q14',
    categoryId: 'daily',
    text: 'Kahvaltı seçimi?',
    options: [
      QuizOption(
        id: 'q14_a',
        text: 'Klasik serpme',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q14_b',
        text: 'O an canım ne isterse',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q15',
    categoryId: 'adventure',
    text: 'Şehir gezisi mi doğa kaçamağı mı?',
    options: [
      QuizOption(
        id: 'q15_a',
        text: 'Şehir gezisi',
        resultKey: 'social',
      ),
      QuizOption(
        id: 'q15_b',
        text: 'Doğa kaçamağı',
        resultKey: 'calm',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q16',
    categoryId: 'daily',
    text: 'Günün temposu nasıl olsun?',
    options: [
      QuizOption(
        id: 'q16_a',
        text: 'Yavaş ve rahat',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q16_b',
        text: 'Dolu dolu',
        resultKey: 'social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q17',
    categoryId: 'adventure',
    text: 'Yeni rota görünce?',
    options: [
      QuizOption(
        id: 'q17_a',
        text: 'Haritadan kontrol ederim',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q17_b',
        text: 'Hemen saparım',
        resultKey: 'spontaneous',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q18',
    categoryId: 'daily',
    text: 'Boş zamanda hangisi?',
    options: [
      QuizOption(
        id: 'q18_a',
        text: 'Kitap',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q18_b',
        text: 'Dizi',
        resultKey: 'classic',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q19',
    categoryId: 'social',
    text: 'Partide hangisine yakınsın?',
    options: [
      QuizOption(
        id: 'q19_a',
        text: 'Kendi küçük grubumla takılırım',
        resultKey: 'calm',
      ),
      QuizOption(
        id: 'q19_b',
        text: 'Yeni insanlarla tanışırım',
        resultKey: 'social',
      ),
    ],
  ),
  QuizQuestion(
    id: 'q20',
    categoryId: 'adventure',
    text: 'Bir plan bozulursa?',
    options: [
      QuizOption(
        id: 'q20_a',
        text: 'Yeni plan yaparım',
        resultKey: 'classic',
      ),
      QuizOption(
        id: 'q20_b',
        text: 'Akışına bırakırım',
        resultKey: 'spontaneous',
      ),
    ],
  ),
];

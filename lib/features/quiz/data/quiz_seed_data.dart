import '../models/quiz_category.dart';
import '../models/quiz_option.dart';
import '../models/quiz_question.dart';

const quizSeedCategories = <QuizCategory>[
  QuizCategory(
    id: 'daily',
    title: 'Günlük Hayat',
    description: 'Hızlı ve eğlenceli seçimler.',
  ),
];

const quizSeedQuestions = <QuizQuestion>[
  QuizQuestion(
    id: 'q1',
    categoryId: 'daily',
    text: 'Hangisini tercih ederdin?',
    options: [
      QuizOption(id: 'q1_a', text: 'Her zaman erken uyanmak'),
      QuizOption(id: 'q1_b', text: 'Her zaman geç yatmak'),
    ],
  ),
  QuizQuestion(
    id: 'q2',
    categoryId: 'daily',
    text: 'Bir yıl boyunca hangisi?',
    options: [
      QuizOption(id: 'q2_a', text: 'Sadece kahve içebilmek'),
      QuizOption(id: 'q2_b', text: 'Sadece çay içebilmek'),
    ],
  ),
  QuizQuestion(
    id: 'q3',
    categoryId: 'daily',
    text: 'Hangisi daha iyi olurdu?',
    options: [
      QuizOption(id: 'q3_a', text: 'Zamanı durdurabilmek'),
      QuizOption(id: 'q3_b', text: 'Işınlanabilmek'),
    ],
  ),
  QuizQuestion(
    id: 'q4',
    categoryId: 'daily',
    text: 'Hangisini seçerdin?',
    options: [
      QuizOption(id: 'q4_a', text: 'Her filmi ilk kez izliyormuş gibi izlemek'),
      QuizOption(id: 'q4_b', text: 'Her kitabı tek okuyuşta ezberlemek'),
    ],
  ),
  QuizQuestion(
    id: 'q5',
    categoryId: 'daily',
    text: 'Sonsuza kadar hangisi?',
    options: [
      QuizOption(id: 'q5_a', text: 'Yaz mevsimi'),
      QuizOption(id: 'q5_b', text: 'Kış mevsimi'),
    ],
  ),
];
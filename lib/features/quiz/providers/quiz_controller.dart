import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/quiz_seed_data.dart';
import '../models/quiz_question.dart';

final quizControllerProvider =
    NotifierProvider<QuizController, QuizState>(QuizController.new);

class QuizState {
  const QuizState({
    required this.questions,
    required this.currentIndex,
    required this.answers,
  });

  factory QuizState.initial(List<QuizQuestion> questions) {
    return QuizState(
      questions: questions,
      currentIndex: 0,
      answers: const {},
    );
  }

  final List<QuizQuestion> questions;
  final int currentIndex;
  final Map<String, String> answers;

  bool get hasQuestions => questions.isNotEmpty;

  QuizQuestion? get currentQuestion {
    if (!hasQuestions) return null;
    if (currentIndex < 0 || currentIndex >= questions.length) return null;
    return questions[currentIndex];
  }

  bool get isLastQuestion {
    if (!hasQuestions) return false;
    return currentIndex >= questions.length - 1;
  }

  int get totalQuestions => questions.length;

  int get currentStep {
    if (!hasQuestions) return 0;
    return currentIndex + 1;
  }

  double get progress {
    if (!hasQuestions) return 0;
    return currentStep / totalQuestions;
  }

  int get answeredCount => answers.length;

  QuizState copyWith({
    List<QuizQuestion>? questions,
    int? currentIndex,
    Map<String, String>? answers,
  }) {
    return QuizState(
      questions: questions ?? this.questions,
      currentIndex: currentIndex ?? this.currentIndex,
      answers: answers ?? this.answers,
    );
  }
}

class QuizController extends Notifier<QuizState> {
  @override
  QuizState build() {
    return QuizState.initial(quizSeedQuestions);
  }

  void selectOption(String optionId) {
    final question = state.currentQuestion;
    if (question == null) return;

    state = state.copyWith(
      answers: {
        ...state.answers,
        question.id: optionId,
      },
    );
  }

  void nextQuestion() {
    if (!state.hasQuestions) return;
    if (state.isLastQuestion) return;

    state = state.copyWith(
      currentIndex: state.currentIndex + 1,
    );
  }

  void reset() {
    state = QuizState.initial(quizSeedQuestions);
  }
}
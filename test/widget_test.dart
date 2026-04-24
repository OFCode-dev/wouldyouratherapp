import 'package:flutter_test/flutter_test.dart';
import 'package:would_you_rather_app/features/quiz/data/quiz_seed_data.dart';

void main() {
  test('quiz seed data is playable', () {
    expect(quizSeedQuestions, isNotEmpty);

    for (final question in quizSeedQuestions) {
      expect(question.options.length, 2);
    }
  });
}

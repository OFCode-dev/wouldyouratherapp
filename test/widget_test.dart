import 'package:flutter_test/flutter_test.dart';
import 'package:would_you_rather_app/features/quiz/data/quiz_seed_data.dart';
import 'package:would_you_rather_app/features/result/data/result_profiles.dart';
import 'package:would_you_rather_app/features/result/services/result_calculator.dart';
import 'package:would_you_rather_app/features/result/services/share_text_builder.dart';

void main() {
  test('quiz seed data is playable', () {
    expect(quizSeedQuestions, isNotEmpty);

    for (final question in quizSeedQuestions) {
      expect(question.options.length, 2);
    }
  });

  test('quiz seed data has minimum Branch 3 content volume', () {
    expect(quizSeedQuestions.length, greaterThanOrEqualTo(16));
    expect(quizSeedCategories.length, greaterThanOrEqualTo(2));
  });

  test('result profiles are available and unique', () {
    expect(resultProfiles.length, greaterThanOrEqualTo(4));

    final ids = resultProfiles.map((profile) => profile.id).toSet();

    expect(ids.length, resultProfiles.length);
  });

  test('all quiz options use valid result keys', () {
    final profileIds = resultProfiles.map((profile) => profile.id).toSet();

    for (final question in quizSeedQuestions) {
      for (final option in question.options) {
        expect(option.resultKey, isNotNull);
        expect(option.resultKey, isNotEmpty);
        expect(profileIds.contains(option.resultKey), isTrue);
      }
    }
  });

  test('result calculator falls back safely when answers are empty', () {
    final profile = const ResultCalculator().calculate(
      questions: quizSeedQuestions,
      answers: const {},
    );

    expect(profile.id, resultProfiles.first.id);
  });

  test('result calculator returns the strongest matching profile', () {
    final profile = const ResultCalculator().calculate(
      questions: quizSeedQuestions,
      answers: const {
        'q3': 'q3_a',
        'q5': 'q5_b',
        'q6': 'q6_b',
        'q8': 'q8_a',
        'q10': 'q10_a',
      },
    );

    expect(profile.id, 'calm');
  });

  test('share text builder includes profile share text and app name', () {
    final profile = resultProfiles.first;
    final shareText = const ShareTextBuilder().build(profile);

    expect(shareText, contains(profile.shareText));
    expect(shareText, contains('Bu mu, O mu?'));
  });
}

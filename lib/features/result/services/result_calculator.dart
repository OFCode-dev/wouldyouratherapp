import '../../quiz/models/quiz_question.dart';
import '../data/result_profiles.dart';
import '../models/result_profile.dart';

class ResultCalculator {
  const ResultCalculator();

  ResultProfile calculate({
    required List<QuizQuestion> questions,
    required Map<String, String> answers,
  }) {
    final scores = <String, int>{};

    for (final question in questions) {
      final selectedOptionId = answers[question.id];
      if (selectedOptionId == null) continue;

      for (final option in question.options) {
        if (option.id != selectedOptionId) continue;

        final resultKey = option.resultKey;
        if (resultKey == null || resultKey.isEmpty) break;

        scores[resultKey] = (scores[resultKey] ?? 0) + 1;
        break;
      }
    }

    if (scores.isEmpty) {
      return resultProfiles.first;
    }

    var topKey = scores.keys.first;
    var topScore = scores[topKey] ?? 0;

    for (final entry in scores.entries) {
      if (entry.value > topScore) {
        topKey = entry.key;
        topScore = entry.value;
      }
    }

    return resultProfiles.firstWhere(
      (profile) => profile.id == topKey,
      orElse: () => resultProfiles.first,
    );
  }
}

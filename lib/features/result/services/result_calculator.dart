import 'package:flutter/material.dart';

import '../../quiz/data/quiz_seed_data.dart';
import '../../quiz/models/quiz_question.dart';
import '../data/result_profiles.dart';
import '../models/result_profile.dart';

class ResultCalculator {
  const ResultCalculator();

  ResultProfile calculate({
    required List<QuizQuestion> questions,
    required Map<String, String> answers,
    required String categoryId,
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

    final categoryProfiles = resultProfiles
        .where((p) => p.categoryId == categoryId)
        .toList();

    if (scores.isEmpty) {
      return _enrichProfile(categoryProfiles.first, categoryId);
    }

    var topKey = scores.keys.first;
    var topScore = scores[topKey] ?? 0;

    for (final entry in scores.entries) {
      if (entry.value > topScore) {
        topKey = entry.key;
        topScore = entry.value;
      }
    }

    final profile = categoryProfiles.firstWhere(
      (profile) => profile.id == topKey,
      orElse: () => categoryProfiles.first,
    );

    return _enrichProfile(profile, categoryId);
  }

  ResultProfile _enrichProfile(ResultProfile profile, String categoryId) {
    final category = quizCategories.firstWhere(
      (c) => c.id == categoryId,
      orElse: () => quizCategories.first,
    );

    return ResultProfile(
      id: profile.id,
      categoryId: profile.categoryId,
      title: profile.title,
      subtitle: profile.subtitle,
      description: profile.description,
      emoji: profile.emoji,
      shareText: profile.shareText,
      color: category.color,
      type: profile.title,
    );
  }
}

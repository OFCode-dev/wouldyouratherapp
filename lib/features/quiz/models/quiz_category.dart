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

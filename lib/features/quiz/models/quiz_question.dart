import 'quiz_option.dart';

class QuizQuestion {
  const QuizQuestion({
    required this.id,
    required this.categoryId,
    required this.text,
    required this.options,
  });

  final String id;
  final String categoryId;
  final String text;
  final List<QuizOption> options;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryId': categoryId,
      'text': text,
      'options': options.map((option) => option.toJson()).toList(),
    };
  }

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      text: json['text'] as String,
      options: (json['options'] as List<dynamic>)
          .map((item) => QuizOption.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

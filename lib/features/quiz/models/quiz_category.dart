class QuizCategory {
  const QuizCategory({
    required this.id,
    required this.title,
    this.description,
  });

  final String id;
  final String title;
  final String? description;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  factory QuizCategory.fromJson(Map<String, dynamic> json) {
    return QuizCategory(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
    );
  }
}

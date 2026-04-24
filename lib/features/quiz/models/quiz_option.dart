class QuizOption {
  const QuizOption({
    required this.id,
    required this.text,
    this.resultKey,
  });

  final String id;
  final String text;
  final String? resultKey;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'resultKey': resultKey,
    };
  }

  factory QuizOption.fromJson(Map<String, dynamic> json) {
    return QuizOption(
      id: json['id'] as String,
      text: json['text'] as String,
      resultKey: json['resultKey'] as String?,
    );
  }
}

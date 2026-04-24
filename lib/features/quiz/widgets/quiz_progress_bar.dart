import 'package:flutter/material.dart';

class QuizProgressBar extends StatelessWidget {
  const QuizProgressBar({
    super.key,
    required this.current,
    required this.total,
    required this.progress,
  });

  final int current;
  final int total;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final safeProgress = progress.clamp(0, 1).toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          total == 0 ? 'Soru yok' : 'Soru $current / $total',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(value: safeProgress),
      ],
    );
  }
}
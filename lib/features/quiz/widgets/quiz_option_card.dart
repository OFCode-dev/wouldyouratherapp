import 'package:flutter/material.dart';

import '../models/quiz_option.dart';

class QuizOptionCard extends StatelessWidget {
  const QuizOptionCard({
    super.key,
    required this.option,
    required this.onTap,
  });

  final QuizOption option;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  option.text,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
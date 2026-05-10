import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import '../models/result_profile.dart';

class ResultShareCard extends StatefulWidget {
  final ResultProfile profile;
  final int answeredCount;
  final int totalQuestions;
  final ScreenshotController screenshotController;

  const ResultShareCard({
    super.key,
    required this.profile,
    required this.answeredCount,
    required this.totalQuestions,
    required this.screenshotController,
  });

  @override
  State<ResultShareCard> createState() => _ResultShareCardState();
}

class _ResultShareCardState extends State<ResultShareCard> {
  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: widget.screenshotController,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              widget.profile.color.withOpacity(0.1),
              widget.profile.color.withOpacity(0.05),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Would You Rather?',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    widget.profile.emoji,
                    style: const TextTheme().displaySmall,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Profile name and result
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kişiliğim:',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.profile.type,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: widget.profile.color,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Description
              Text(
                widget.profile.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),

              // Stats row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '${widget.answeredCount}',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        'Cevapladı',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Column(
                    children: [
                      Text(
                        '${widget.totalQuestions}',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        'Toplam Soru',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Footer
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  color: widget.profile.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '🎯 Kişiliğimi Öğren',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: widget.profile.color,
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

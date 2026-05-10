import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'providers/quiz_controller.dart';
import 'widgets/quiz_option_card.dart';
import 'widgets/quiz_progress_bar.dart';

class QuizScreen extends ConsumerWidget {
  final String? categoryId;

  const QuizScreen({super.key, this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizControllerProvider);
    final quizController = ref.read(quizControllerProvider.notifier);
    final question = quizState.currentQuestion;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: SafeArea(
        child: question == null
            ? _EmptyQuizView(
                onBackHome: () => context.go('/'),
              )
            : Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    QuizProgressBar(
                      current: quizState.currentStep,
                      total: quizState.totalQuestions,
                      progress: quizState.progress,
                    ),
                    const SizedBox(height: 32),
                    Text(
                      question.text,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 24),
                    ...question.options.map(
                      (option) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: QuizOptionCard(
                          option: option,
                          onTap: () {
                            final shouldFinish = quizState.isLastQuestion;

                            quizController.selectOption(option.id);

                            if (shouldFinish) {
                              if (categoryId != null) {
                                context.go('/result/$categoryId');
                              } else {
                                context.go('/result');
                              }
                              return;
                            }

                            quizController.nextQuestion();
                          },
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () => context.go('/'),
                      child: const Text('Ana sayfaya dön'),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class _EmptyQuizView extends StatelessWidget {
  const _EmptyQuizView({
    required this.onBackHome,
  });

  final VoidCallback onBackHome;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.quiz_outlined, size: 48),
            const SizedBox(height: 16),
            Text(
              'Henüz quiz sorusu yok.',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onBackHome,
              child: const Text('Ana sayfaya dön'),
            ),
          ],
        ),
      ),
    );
  }
}
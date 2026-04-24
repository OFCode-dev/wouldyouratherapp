import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

import '../quiz/providers/quiz_controller.dart';
import 'services/result_calculator.dart';
import 'services/share_text_builder.dart';
import 'widgets/result_profile_card.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizControllerProvider);
    final quizController = ref.read(quizControllerProvider.notifier);

    if (quizState.answers.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Sonuç'),
          leading: IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () => context.go('/'),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.quiz_outlined, size: 56),
                const SizedBox(height: 16),
                Text(
                  'Sonucunu görmek için önce kısa quiz’i tamamla.',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    quizController.reset();
                    context.go('/quiz');
                  },
                  child: const Text('Quiz’e başla'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    final profile = const ResultCalculator().calculate(
      questions: quizState.questions,
      answers: quizState.answers,
    );
    final shareText = const ShareTextBuilder().build(profile);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonucun'),
        leading: IconButton(
          icon: const Icon(Icons.home_outlined),
          onPressed: () => context.go('/'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              ResultProfileCard(
                profile: profile,
                answeredCount: quizState.answeredCount,
                totalQuestions: quizState.totalQuestions,
              ),
              const Spacer(),
              Builder(
                builder: (shareButtonContext) {
                  return ElevatedButton.icon(
                    onPressed: () async {
                      final box =
                          shareButtonContext.findRenderObject() as RenderBox?;

                      await Share.share(
                        shareText,
                        sharePositionOrigin: box == null
                            ? null
                            : box.localToGlobal(Offset.zero) & box.size,
                      );
                    },
                    icon: const Icon(Icons.ios_share_outlined),
                    label: const Text('Sonucumu paylaş'),
                  );
                },
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  quizController.reset();
                  context.go('/quiz');
                },
                child: const Text('Tekrar Oyna'),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => context.go('/'),
                child: const Text('Ana sayfa'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

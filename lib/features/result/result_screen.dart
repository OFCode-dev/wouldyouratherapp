import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:screenshot/screenshot.dart';

import '../quiz/providers/quiz_controller.dart';
import 'services/result_calculator.dart';
import 'services/share_text_builder.dart';
import 'widgets/result_profile_card.dart';
import 'widgets/result_share_card.dart';

class ResultScreen extends ConsumerWidget {
  final String? categoryId;

  const ResultScreen({super.key, this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizControllerProvider);
    final quizController = ref.read(quizControllerProvider.notifier);
    final screenshotController = ScreenshotController();

    if (quizState.answers.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(‘Sonuç’),
          leading: IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () => context.go(‘/’),
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
                  ‘Sonucunu görmek için önce kısa quiz\’i tamamla.’,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    quizController.reset();
                    if (categoryId != null) {
                      context.go(‘/quiz/$categoryId’);
                    } else {
                      context.go(‘/quiz’);
                    }
                  },
                  child: const Text(‘Quiz\’e başla’),
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
      categoryId: categoryId ?? 'yemek',
    );
    final shareText = const ShareTextBuilder().build(profile);

    return Scaffold(
      appBar: AppBar(
        title: const Text(‘Sonucun’),
        leading: IconButton(
          icon: const Icon(Icons.home_outlined),
          onPressed: () => context.go(‘/’),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 12),
                ResultProfileCard(
                  profile: profile,
                  answeredCount: quizState.answeredCount,
                  totalQuestions: quizState.totalQuestions,
                ),
                const SizedBox(height: 24),

                // Share card for screenshot
                ResultShareCard(
                  profile: profile,
                  answeredCount: quizState.answeredCount,
                  totalQuestions: quizState.totalQuestions,
                  screenshotController: screenshotController,
                ),
                const SizedBox(height: 24),

                // Share button with screenshot capability
                Builder(
                  builder: (shareButtonContext) {
                    return ElevatedButton.icon(
                      onPressed: () async {
                        try {
                          final image =
                              await screenshotController.capture();
                          if (image != null && context.mounted) {
                            final box = shareButtonContext
                                .findRenderObject() as RenderBox?;

                            await Share.shareXFiles(
                              [
                                XFile.fromData(
                                  image,
                                  mimeType: ‘image/png’,
                                  name: ‘kisilik_sonucu.png’,
                                )
                              ],
                              sharePositionOrigin: box == null
                                  ? null
                                  : box.localToGlobal(Offset.zero) &
                                      box.size,
                            );
                          }
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text(‘Paylaşma başarısız: $e’),
                              ),
                            );
                          }
                        }
                      },
                      icon: const Icon(Icons.ios_share_outlined),
                      label: const Text(‘Sonucumu Paylaş (Görsel)’),
                    );
                  },
                ),
                const SizedBox(height: 12),

                // Text share option
                Builder(
                  builder: (shareTextContext) {
                    return OutlinedButton.icon(
                      onPressed: () async {
                        final box = shareTextContext.findRenderObject()
                            as RenderBox?;

                        await Share.share(
                          shareText,
                          sharePositionOrigin: box == null
                              ? null
                              : box.localToGlobal(Offset.zero) &
                                  box.size,
                        );
                      },
                      icon: const Icon(Icons.share_outlined),
                      label: const Text(‘Metni Paylaş’),
                    );
                  },
                ),
                const SizedBox(height: 12),

                OutlinedButton(
                  onPressed: () {
                    quizController.reset();
                    if (categoryId != null) {
                      context.go(‘/quiz/$categoryId’);
                    } else {
                      context.go(‘/quiz’);
                    }
                  },
                  child: const Text(‘Tekrar Oyna’),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => context.go(‘/’),
                  child: const Text(‘Ana sayfa’),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

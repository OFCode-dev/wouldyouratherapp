import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../quiz/providers/quiz_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Would You Rather'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                'Would You Rather?',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'İki seçenekten birini seç, quiz’i tamamla.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  ref.read(quizControllerProvider.notifier).reset();
                  context.go('/quiz');
                },
                child: const Text('Başla'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => context.go('/settings'),
                child: const Text('Ayarlar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
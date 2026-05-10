import ‘package:flutter/material.dart’;
import ‘package:flutter_riverpod/flutter_riverpod.dart’;
import ‘package:go_router/go_router.dart’;
import ‘dart:math’;

import ‘../quiz/data/quiz_seed_data.dart’;
import ‘../quiz/providers/quiz_controller.dart’;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(‘Would You Rather’),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.go(‘/settings’),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Featured category card
                if (quizCategories.isNotEmpty)
                  _buildFeaturedCard(context, ref, quizCategories.first),
                const SizedBox(height: 32),

                // Random button
                ElevatedButton.icon(
                  onPressed: () => _navigateToRandomCategory(context, ref),
                  icon: const Icon(Icons.shuffle),
                  label: const Text(‘Rastgele Kategoriden Başla’),
                ),
                const SizedBox(height: 32),

                // Category grid title
                Text(
                  ‘Tüm Kategoriler’,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12),

                // Category grid
                GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: quizCategories
                      .map((category) =>
                          _buildCategoryCard(context, ref, category))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedCard(
    BuildContext context,
    WidgetRef ref,
    var category,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: category.color.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category.emoji,
              style: const TextTheme().displaySmall,
            ),
            const SizedBox(height: 12),
            Text(
              ‘Bu Hafta Seçilmiş’,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: category.color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              category.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            Text(
              category.description,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(quizControllerProvider.notifier).reset();
                context.go(‘/quiz/${category.id}’);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: category.color,
              ),
              child: const Text(‘Hemen Başla’),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context,
    WidgetRef ref,
    var category,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {
          ref.read(quizControllerProvider.notifier).reset();
          context.go(‘/quiz/${category.id}’);
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                category.emoji,
                style: const TextTheme().headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                category.title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToRandomCategory(BuildContext context, WidgetRef ref) {
    final random = Random();
    final randomCategory =
        quizCategories[random.nextInt(quizCategories.length)];
    ref.read(quizControllerProvider.notifier).reset();
    context.go(‘/quiz/${randomCategory.id}’);
  }
}
import 'package:go_router/go_router.dart';

import '../features/home/home_screen.dart';
import '../features/quiz/quiz_screen.dart';
import '../features/result/result_screen.dart';
import '../features/settings/settings_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String quiz = '/quiz';
  static const String result = '/result';
  static const String settings = '/settings';
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.quiz,
      name: 'quiz',
      builder: (context, state) => const QuizScreen(),
    ),
    GoRoute(
      path: AppRoutes.result,
      name: 'result',
      builder: (context, state) => const ResultScreen(),
    ),
    GoRoute(
      path: AppRoutes.settings,
      name: 'settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
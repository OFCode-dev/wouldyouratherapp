import 'package:go_router/go_router.dart';
import '../features/home/home_screen.dart';
import '../features/quiz/quiz_screen.dart';
import '../features/result/result_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/onboarding/onboarding_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (c, s) => const HomeScreen()),
    GoRoute(path: '/onboarding', builder: (c, s) => const OnboardingScreen()),
    GoRoute(
      path: '/quiz/:categoryId',
      builder: (c, s) => QuizScreen(categoryId: s.pathParameters['categoryId']!),
    ),
    GoRoute(
      path: '/result/:categoryId',
      builder: (c, s) => ResultScreen(categoryId: s.pathParameters['categoryId']!),
    ),
    GoRoute(path: '/settings', builder: (c, s) => const SettingsScreen()),
  ],
);
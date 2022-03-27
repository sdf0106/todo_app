import 'package:go_router/go_router.dart';
import 'package:todo_app/features/splash/onboarding_screen.dart';
import 'package:todo_app/features/todos/presentation/screens/main_screen.dart';

class AppRouter {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/main',
        builder: (context, state) => const MainScreen(),
      ),
    ],
    
  );
}

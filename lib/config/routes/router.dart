import 'package:go_router/go_router.dart';
import '../../features/splash/onboarding_screen.dart';
import '../../features/todos/presentation/screens/main_screen.dart';

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

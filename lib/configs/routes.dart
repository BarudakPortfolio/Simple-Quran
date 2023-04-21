import 'package:go_router/go_router.dart';
import 'package:simple_quran/presentation/pages/onboarding_page.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
    ],
  );
}

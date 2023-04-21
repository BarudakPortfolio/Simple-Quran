import 'package:go_router/go_router.dart';
import 'package:simple_quran/presentation/pages/onboarding_page.dart';

import '../presentation/pages/main_page.dart';

class AppRoutes {
  static const onboarding = '/onboarding';

  static GoRouter goRouter = GoRouter(
    initialLocation: onboarding,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
          path: '/',
          name: 'mainpage',
          builder: (context, state) => const MainPage()),
    ],
  );
}

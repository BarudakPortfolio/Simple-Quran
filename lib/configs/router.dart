import 'package:go_router/go_router.dart';
import 'package:simple_quran/presentation/pages/onboarding_page.dart';

class Router {
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/on-boarding',
        builder: (context, state) => const OnBoardingPage(),
      ),
    ],
  );
}

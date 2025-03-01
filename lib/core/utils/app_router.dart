
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/splashView';
  static const kOnboardingView = '/onboardingView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
          path: kOnboardingView,
          builder: (context, state) => const OnboardingView()),
    ],
  );
}

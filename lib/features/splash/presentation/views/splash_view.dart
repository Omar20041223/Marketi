import 'package:animate_do/animate_do.dart';
import 'package:ecommerceapp/core/utils/app_images.dart';
import 'package:ecommerceapp/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BounceInDown(
        duration: Duration(seconds: 2),
        from: 200,
        child: Center(
          child: Image.asset(AppImages.logoImage),
        ),
      ),
    );
  }
}

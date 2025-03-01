import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          color: Colors.white,
          // theme: ThemeData(
          //   textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
          //   scaffoldBackgroundColor: Colors.white,
          // ),
        );
      },
    );
  }
}

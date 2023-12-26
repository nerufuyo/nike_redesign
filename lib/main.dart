import 'package:flutter/material.dart';
import 'package:nike_redesign/common/config/route.dart';
import 'package:nike_redesign/common/config/theme.dart';
import 'package:nike_redesign/presentation/screens/home_screen.dart';
import 'package:nike_redesign/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Store',
      theme: AppCustomThemes().lightTheme,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}

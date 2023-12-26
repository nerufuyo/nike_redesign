import 'package:flutter/material.dart';
import 'package:nike_redesign/common/config/route.dart';
import 'package:nike_redesign/common/config/static.dart';
import 'package:nike_redesign/common/config/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AppStatic static = AppStatic();
  final AppTypography typography = AppTypography();

  @override
  void initState() {
    super.initState();
    initialState();
  }

  void initialState() async {
    navigateDuration();
  }

  navigateDuration() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          static.logo,
          width: MediaQuery.sizeOf(context).width * 0.5,
        ),
      ),
    );
  }
}

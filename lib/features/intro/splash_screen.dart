import 'package:flutter/material.dart';
import 'package:greenmart/features/intro/welcome_screen.dart';

import '../../core/app_colors.dart';
import '../../core/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.meentGreenColor,
      body:Center(child: Image.asset(AppImages.logo),),
    );
  }
}

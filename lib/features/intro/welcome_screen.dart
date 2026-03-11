import 'package:flutter/material.dart';

import '../../core/app_images.dart';
import '../../core/text_style.dart';
import '../auth/login_screen.dart';
import '../widgets/custom_elevated_bottom.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppImages.welcomeScreen,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 70,
            left: 28,
            right: 28,
            child: Column(
              children: [
                Image.asset(AppImages.carrot),
                SizedBox(height: 36),
                Text(
                  "Welcome \n To Our Store",
                  style: AppStyles.poppin600White,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  "Get your groceries in as fast as one hour",
                  style: AppStyles.poppin400White,
                ),
                SizedBox(height: 56),
                CustomElevatedButton(
                  text: "Get started",
                  logic: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

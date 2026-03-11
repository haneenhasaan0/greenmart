import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/app_images.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/main_screen/home.dart';
import 'package:greenmart/features/widgets/custom_elevated_bottom.dart';

class PlacementScreen extends StatelessWidget {
  const PlacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.placement, fit: BoxFit.contain)),
          SizedBox(height: 12),
          Text(
            "Your Order has been \n           accepted",
            style: AppStyles.poppin600Black22,
          ),
          SizedBox(height: 12),
          Text(
            "Your items has been placed and is on \n           it’s way to being processed",
            style: AppStyles.poppin500Ment14.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CustomElevatedButton(
              text: "Go to Home",
              logic: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/app_colors.dart';
import '../../core/text_style.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: AppColors.blackColor,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter verification code",
                style: AppStyles.poppin600Black22,
              ),
              SizedBox(height: 8),
              Text(
                "We have sent SMS to: 01XXXXXXXXXX",
                style: AppStyles.poppin500Ment14.copyWith(
                  color: AppColors.lightGrey,
                ),
              ),
              SizedBox(height: 8),

              MaterialPinField(
                length: 5,
                theme: MaterialPinTheme(
                  shape: MaterialPinShape.outlined,
                  cellSize: Size(56, 64),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

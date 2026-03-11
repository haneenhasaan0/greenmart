import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/auth/verification.dart';
import 'package:greenmart/features/widgets/custom_elevated_bottom.dart';
import 'package:greenmart/features/widgets/custom_form_field.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppColors.blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Your Mobile Number",
                style: AppStyles.poppin600Black22,
              ),
              SizedBox(height: 8),
              Text(
                "We need to verify you. We will send you a one\n time verification code.",
                style: AppStyles.poppin500Ment14.copyWith(
                  color: AppColors.lightGrey,
                ),
              ),
              SizedBox(height: 42),
              CustomFormField(
                text: "01xxxxxxxxxx",
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 8),
              CustomElevatedButton(
                text: "Next",
                logic: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verification()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

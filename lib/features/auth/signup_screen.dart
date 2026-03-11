import 'package:flutter/material.dart';
import 'package:greenmart/features/auth/number_screen.dart';
import 'package:greenmart/features/widgets/password_form_field.dart';

import '../../core/app_colors.dart';
import '../../core/app_images.dart';
import '../../core/text_style.dart';
import '../main_screen/home.dart';
import '../widgets/custom_elevated_bottom.dart';
import '../widgets/custom_form_field.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 24.0, right: 24),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AppImages.coloredCarrot)),
                SizedBox(height: 40),
                Text("Signup", style: AppStyles.poppin600Black22),
                SizedBox(height: 16),
                Text(
                  "Enter your credentials to continue",
                  style: AppStyles.poppin400White.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Name",
                  style: AppStyles.poppin400White.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 16),
                CustomFormField(
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                  text: "haneen",
                  keyboardType: TextInputType.emailAddress,
                ),
                Text(
                  "Email",
                  style: AppStyles.poppin400White.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 16),
                CustomFormField(
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    ).hasMatch(value);
                    if (!emailValid) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                  text: "example@gmail.com",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),
                Text(
                  "Password",
                  style: AppStyles.poppin400White.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 16),
                PasswordFormField(
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter you password";
                    }
                    if (value.length < 6) {
                      return "your password is too weak";
                    }
                    return null;
                  },
            
                  text: "********",
                  keyboardType: TextInputType.text,
                  sufIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                  ), isSelected: true,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password",
                      style: AppStyles.poppin400White.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CustomElevatedButton(
                  logic: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                  text: "Signup",
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: AppStyles.poppin600Black22.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: "Login",
                            style: AppStyles.poppin600Black22.copyWith(
                              color: AppColors.meentGreenColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                CustomElevatedButton(text: "OTP", logic: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NumberScreen()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/app_images.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/widgets/custom_elevated_bottom.dart';
import 'package:greenmart/features/widgets/profile_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/profile.png"),
                  Expanded(
                    child: ListTile(
                      trailing: Icon(
                        Icons.edit,
                        color: AppColors.meentGreenColor,
                      ),
          
                      title: Text(
                        "Sayed Abd Aziz",
                        style: AppStyles.poppin600Black22,
                      ),
                      subtitle: Text(
                        "sayed@gmail.com",
                        style: AppStyles.poppin600Black22.copyWith(
                          color: AppColors.greyColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 16),
              ProfileWidget(text: 'Orders', icon: AppImages.orderIcon),
              ProfileWidget(text: 'My Details', icon: AppImages.detailsIcon),
              ProfileWidget(
                text: 'Delivery Address',
                icon: AppImages.addressIcon,
              ),
              ProfileWidget(text: 'Payment Method', icon: AppImages.payIcon),
              ProfileWidget(text: 'Promo Card', icon: AppImages.promoIcon),
              ProfileWidget(
                text: 'Notifications',
                icon: AppImages.notificationIcon,
              ),
              ProfileWidget(text: 'Help', icon: AppImages.helpIcon),
              ProfileWidget(text: 'About', icon: AppImages.aboutIcon),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.lightGrey),
                  onPressed: () {}, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout,color: AppColors.meentGreenColor,size: 24,),

                      SizedBox(width: 4,),

                      Text("Log Out", style: AppStyles.poppin500Ment14.copyWith(fontSize: 20),),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/main_screen/placement_screen.dart';
import 'package:greenmart/features/widgets/List_tile.dart';
import 'package:greenmart/features/widgets/custom_elevated_bottom.dart';

class CustomizedmBottomSheet extends StatelessWidget {
  const CustomizedmBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: MediaQuery.sizeOf(context).height*0.3,
            maxHeight: MediaQuery.sizeOf(context).height*0.9),

        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Check Out", style: AppStyles.poppin600Black22),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel, size: 28, color: AppColors.blackColor),
                  ),
                  Divider(color: AppColors.greyColor, thickness: 1),
                ],
              ),
              SizedBox(height: 8),
              Divider(
                thickness: 1,
                color: AppColors.greyColor,
                endIndent: 2,
                indent: 2,
              ),
              SizedBox(height: 12),
          
              CustomListTiel(text: "Delivery", text2: "Select method"),
              SizedBox(height: 12),
          
              Divider(
                thickness: 1,
                color: AppColors.greyColor,
                endIndent: 8,
                indent: 8,
              ),
              SizedBox(height: 12),
          
              CustomListTiel(text: "Payment", text2: "Pay"),
              SizedBox(height: 12),
          
              Divider(
                thickness: 1,
                color: AppColors.greyColor,
                endIndent: 8,
                indent: 8,
              ),
              SizedBox(height: 12),
          
              CustomListTiel(text: "Promo Code", text2: "Pick Discount"),
              SizedBox(height: 12),
          
              Divider(
                thickness: 1,
                color: AppColors.greyColor,
                endIndent: 8,
                indent: 8,
              ),
              SizedBox(height: 12),
          
              CustomListTiel(text: "Total Cost", text2: "\$13.9"),
              SizedBox(height: 12),
          
              Text(
                "By placing an order you agree to our",
                style: AppStyles.poppin400White.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Terms",
                      style: AppStyles.poppin600Black22.copyWith(fontSize: 16),
                    ),
                    TextSpan(
                      text: "and",
                      style: AppStyles.poppin400White.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                    TextSpan(
                      text: "conditions",
                      style: AppStyles.poppin600Black22.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              CustomElevatedButton(
                text: "Place Order",
                logic: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlacementScreen()),
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

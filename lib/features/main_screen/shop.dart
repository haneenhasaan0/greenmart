import 'package:flutter/material.dart';
import 'package:greenmart/features/main_screen/data/product_model.dart';
import 'package:greenmart/features/main_screen/explore.dart';
import 'package:greenmart/features/widgets/card_item.dart';
import 'package:greenmart/features/widgets/bestselling_grid_Viewing.dart';

import '../../core/app_colors.dart';
import '../../core/app_images.dart';
import '../../core/text_style.dart';
import '../widgets/custom_form_field.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Image.asset(
            AppImages.logo,
            color: AppColors.meentGreenColor,
            height: 48,
          ),
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      body:
      Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploreScreen()));
                },
                child: Hero(
                  tag: "search",
                  child: Material(
                    color: AppColors.transColor,
                    child: CustomFormField(
                      enabled: false,
                      text: "Search Store",
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Explore Offer", style: AppStyles.poppin600Black22),
                  Spacer(),
                  Text("See all", style: AppStyles.poppin500Ment14),
                  SizedBox(height: 10),
                ],
              ),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 8);
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardItem(offers: offers[index],);
                  },
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Text("Best Selling", style: AppStyles.poppin600Black22),
                  Spacer(),
                  Text("See all", style: AppStyles.poppin500Ment14),
                  SizedBox(height: 10),
                ],
              ),
              BestSelling()
            ],
          ),
        ),
      ),
    );
  }
}

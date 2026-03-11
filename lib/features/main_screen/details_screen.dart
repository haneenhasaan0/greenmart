import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/app_images.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/main_screen/data/product_model.dart';
import 'package:greenmart/features/widgets/bottom_sheet.dart';
import 'package:greenmart/features/widgets/custom_elevated_bottom.dart';

class DetailsScreen extends StatelessWidget {
  DummyData dummyData;

  DetailsScreen({super.key, required this.dummyData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:dummyData.bgColor,

        actions: [
          Icon(Icons.upload_outlined, color: AppColors.blackColor, size: 30),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackColor,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomElevatedButton(text: "Add To Cart", logic: (){
           showModalBottomSheet(

               useSafeArea: true,
               context: context, builder: (context){
             return CustomizedmBottomSheet();
           });
        }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: dummyData.bgColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(dummyData.image, fit: BoxFit.contain),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(dummyData.name, style: AppStyles.poppin600Black22),
                        Spacer(),
                        Icon(
                          Icons.favorite_border,
                          color: AppColors.blackColor,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                      Text(
                        "1kg,Price",
                        style: AppStyles.poppin400White.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
        
                  Row(
                    children: [
                      Icon(Icons.remove, size: 24, color: AppColors.greyColor),
                      SizedBox(width: 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.greyColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6,
                          ),
                          child: Text("1", style: AppStyles.poppin600Black22),
                        ),
                      ),
                      SizedBox(width: 12),
        
                      Icon(Icons.add, size: 24, color: AppColors.meentGreenColor),
                    ],
                  ),
                  SizedBox(height: 12),
                           ExpansionTile(
              tilePadding: EdgeInsets.zero,
                      title: Text("Product Detail", style: AppStyles.poppin600Black22),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Apple is very important to our body",
                              style: AppStyles.poppin600Black22.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        "Nutrition's",
                        style: AppStyles.poppin600Black22.copyWith(fontSize: 20),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 24, color: Colors.black),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(
                    thickness: 1,
                    color: AppColors.greyColor,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Review",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.arrow_forward_ios, size: 24, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

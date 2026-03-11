import 'package:flutter/material.dart';
import 'package:greenmart/features/main_screen/data/product_model.dart';
import 'package:greenmart/features/main_screen/details_screen.dart';

import '../../core/app_colors.dart';
import '../../core/text_style.dart';

class CardItem extends StatelessWidget {
  DummyData offers;

  CardItem({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(dummyData: offers)));
      },
      child: Container(
        height: 140,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: offers.bgColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: Offset(0, 4),
              color: Color(0xFFE2E2E2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(offers.image, height: 50, cacheWidth: 200),
                ),
              ),
              SizedBox(height: 8),
              Text(offers.name, style: AppStyles.poppin600Black22),
              SizedBox(height: 4),
              Text(
                offers.quantity,
                style: AppStyles.poppin500Ment14.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    " \$${offers.price}",
                    style: AppStyles.poppin600Black22.copyWith(fontSize: 16),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 34,
                    width: 34,
                    child: FloatingActionButton.small(
                      heroTag: UniqueKey(),
                      onPressed: () {},

                      backgroundColor: AppColors.meentGreenColor,
                      child: Icon(
                        Icons.add,
                        size: 16,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

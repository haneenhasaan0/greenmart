import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/text_style.dart';

class CustomListTiel extends StatelessWidget {
  final String text;
  final String text2;

  const CustomListTiel({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyles.poppin600Black22.copyWith(
            color: AppColors.greyColor,
          ),
        ),
        Spacer(),
        Row(
          children: [
            Text(text2,style: AppStyles.poppin600Black22,),
            Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,size: 20,)
          ],
        )
      ],
    );
  }
}

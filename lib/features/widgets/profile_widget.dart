import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/text_style.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key,required this.text,required this.icon});
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(AssetImage(icon)),
            SizedBox(width: 12,),
            Text(text,style: AppStyles.poppin600Black22,),
            Spacer(),
            Icon(Icons.arrow_forward_ios,size: 16,color: AppColors.blackColor,)
          ],
        ),
        SizedBox(height: 4,),
        Divider(indent: 10,endIndent: 10,color: AppColors.lightGrey,),
        SizedBox(height: 4,),
      ],
    );
  }
}

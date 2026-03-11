import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/text_style.dart';
import '../main_screen/data/fav_model.dart';

class FavWidget extends StatelessWidget {
  const FavWidget({super.key, required this.favModel});

  final FavModel favModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        (favModel.image),
      ),
      title: Text(
        favModel.title,
        style: AppStyles.poppin600Black22,
      ),
      subtitle: Text(
        favModel.subTitle,
        style: AppStyles.poppin500Ment14
            .copyWith(color: AppColors.lightGrey),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "\$favModel.price",
            style: AppStyles.poppin600Black22,
          ),
        ],
      ),
    );
  }
}
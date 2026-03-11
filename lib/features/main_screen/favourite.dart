import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/main_screen/data/fav_model.dart';
import 'package:greenmart/features/widgets/fav_widget.dart';

class FavouriteScrren extends StatelessWidget {
  const FavouriteScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favourite", style: AppStyles.poppin600Black22),
      ),
      body: ListView.separated(
        itemBuilder: (context,index){
          return FavWidget(favModel: favModel[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(endIndent: 10,indent: 10,color: AppColors.lightGrey,);
        },
        itemCount: favModel.length,
      ),
    );
  }
}

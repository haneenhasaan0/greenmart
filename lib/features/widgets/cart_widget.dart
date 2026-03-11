import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:greenmart/features/main_screen/data/product_model.dart';
import 'package:greenmart/features/widgets/add_sub_widget.dart';

class CartWidget extends StatelessWidget {
  DummyData dummyData;

  CartWidget({super.key,required this.dummyData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image:AssetImage(dummyData.image,)),
        SizedBox(width: 16,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
                Text(dummyData.name,style: AppStyles.poppin600Black22.copyWith(fontSize: 18),),
                Spacer(),
                Icon(Icons.cancel,color: AppColors.lightGrey,size: 20,)
              ],
            ),
            SizedBox(height: 4,),
            Text(dummyData.quantity,style: AppStyles.poppin400White.copyWith(color: AppColors.lightGrey,fontSize: 12),),
            SizedBox(height: 10,),
            Row(
              children: [
                AddSubWidget(iconData: Icons.remove),
                SizedBox(width: 6,),
                Text("1",style: AppStyles.poppin600Black22,),
                SizedBox(width: 6,),

                AddSubWidget(iconData: Icons.add),

              ],
            )
          ],),
        )
      ],
    );
  }
}

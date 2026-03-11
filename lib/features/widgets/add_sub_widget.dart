import 'package:flutter/material.dart';
import 'package:greenmart/core/app_colors.dart';

class AddSubWidget extends StatelessWidget {
  final IconData iconData;
  const AddSubWidget({super.key,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(child: Icon(iconData,size: 20,color: AppColors.lightGrey,)),
      ),
    );
  }
}

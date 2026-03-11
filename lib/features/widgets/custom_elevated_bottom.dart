import 'package:flutter/material.dart';

import '../../core/text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function() logic;
  const CustomElevatedButton({super.key,required this.text,required this.logic});

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
        onPressed: logic,
        child: Text(
          text,          style: AppStyles.poppin600White.copyWith(fontSize: 16),
        ),
      )
    ;
  }
}

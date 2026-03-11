import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/text_style.dart';

class CustomFormField extends StatefulWidget {
  final String text;
  final TextInputType keyboardType;
  bool enabled;
  final String? Function(String?)? validation;
  Function(String)? onChanged;
  CustomFormField({
    super.key,
    this.onChanged,
     this.enabled=true,
    required this.text,
    required this.keyboardType,
    this.validation,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      enabled:widget.enabled ,
      validator: widget.validation,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightGrey,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),

          borderSide: BorderSide(color: AppColors.redColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        hintText: widget.text,
        border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(24),borderSide: BorderSide.none),

        hintStyle: AppStyles.poppin400White.copyWith(
          color: AppColors.greyColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}

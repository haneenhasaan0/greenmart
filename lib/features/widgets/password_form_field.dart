import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/text_style.dart';

class PasswordFormField extends StatefulWidget {
  final String text;
  late bool isSelected;
  final TextInputType keyboardType;
  final String? obsText;

  final Widget? sufIcon;
  final String? Function(String?)? validation;

   PasswordFormField({
    super.key,
    required this.text,
    required this.keyboardType,
     this.obsText="*",
    this.sufIcon,
    this.validation, required bool isSelected
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  void initState(){
    super.initState();
  widget.isSelected=true;
    
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validation,
      obscureText: widget.isSelected,
      obscuringCharacter: widget.obsText!,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: widget.isSelected
            ? IconButton(
          onPressed: () {
            setState(() {
              widget.isSelected = !widget.isSelected;
            });
          },
          icon: Icon(
            widget.isSelected ? Icons.visibility_off : Icons.visibility,
          ),
        )
            : null,
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

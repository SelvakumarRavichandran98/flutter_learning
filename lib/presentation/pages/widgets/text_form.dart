import 'package:flutter/material.dart';
import 'package:flutter_learning/presentation/common/colors.dart';
import 'package:flutter_learning/presentation/common/size_config.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.cursorColor = AppColors.greyDark,
    this.readOnly = false,
    this.labelText = '',
    this.style = const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.greyLight,
    ),
    this.labelStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.greyDark,
    ),
    this.hintStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.greyLight,
    ),
    this.hintText = '',
    this.border,
    this.disabledBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.maxLength,
    this.initialValue,
    this.prefixIcon,
  });

  static final borderStyle1 = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyLight, width: 2.wr),
    borderRadius: BorderRadius.circular(10.wr),
  );

  static final borderStyle2 = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primary, width: 2.wr),
    borderRadius: BorderRadius.circular(10.wr),
  );

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final InputBorder? border;
  final TextEditingController? controller;
  final Color cursorColor;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle hintStyle;
  final String hintText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextStyle labelStyle;
  final String labelText;
  final int? maxLength;
  final bool obscureText;
  final Widget? prefixIcon;
  final bool readOnly;
  final TextStyle style;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorColor: cursorColor,
      readOnly: readOnly,
      style: style,
      validator: validator,
      onChanged: onChanged,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        border: border ?? borderStyle1,
        disabledBorder: disabledBorder ?? borderStyle1,
        enabledBorder: enabledBorder ?? borderStyle1,
        focusedBorder: focusedBorder ?? borderStyle1,
        errorBorder: errorBorder ?? borderStyle2,
        focusedErrorBorder: focusedErrorBorder ?? borderStyle2,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        counterText: '',
        counterStyle: const TextStyle(height: 0),
        counter: const Offstage(),
      ),
    );
  }
}

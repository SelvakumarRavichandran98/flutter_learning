import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/presentation/common/colors.dart';
import 'package:flutter_learning/presentation/common/size_config.dart';

class AppDropDownFormField<T> extends StatelessWidget {
  const AppDropDownFormField({
    super.key,
    required this.items,
    this.onChange,
    this.label = '',
    this.validator,
    this.controller,
    this.border,
    this.disabledBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.hintStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.greyDark,
    ),
    this.style = const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.greyLight,
    ),
  });

  static final borderStyle1 = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyLight, width: 2.wr),
    borderRadius: BorderRadius.circular(10.wr),
  );

  static final borderStyle2 = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primary, width: 2.wr),
    borderRadius: BorderRadius.circular(10.wr),
  );

  final void Function(T?)? onChange;
  final String? Function(T?)? validator;
  final InputBorder? border;
  final T? controller;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle hintStyle;
  final List<T> items;
  final String label;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      value: controller,
      isExpanded: true,
      hint: Text(label, style: hintStyle),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      onChanged: onChange,
      // icon: const Icon(Icons.arrow_drop_down, color: AppColors.greyDark),
      // iconSize: 30.wr,
      // buttonHeight: 60.wr,
      // buttonPadding: EdgeInsets.only(left: 12.wr, right: 10.wr),
      // dropdownDecoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.wr),
      // ),
      // dropdownMaxHeight: 200.hr,
      // scrollbarThickness: 10.wr,
      // scrollbarAlwaysShow: true,
      // scrollbarRadius: Radius.circular(10.wr),
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(item.toString(), style: style),
        );
      }).toList(),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: disabledBorder ?? borderStyle1,
        disabledBorder: disabledBorder ?? borderStyle1,
        enabledBorder: enabledBorder ?? borderStyle1,
        focusedBorder: focusedBorder ?? borderStyle1,
        errorBorder: errorBorder ?? borderStyle2,
        focusedErrorBorder: focusedErrorBorder ?? borderStyle2,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learning/presentation/common/colors.dart';

const String database = 'database';

final ThemeData theme = ThemeData(
  primaryColor: AppColors.primary,
  brightness: Brightness.light,
  highlightColor: Colors.white,
  useMaterial3: true,
  fontFamily: 'OpenSans',
  textTheme: const TextTheme().apply(
    fontFamily: 'OpenSans',
    bodyColor: AppColors.greyDark,
    displayColor: AppColors.greyDark,
  ),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: AppColors.primary, secondary: AppColors.greyDark)
      .copyWith(surface: Colors.white),
);

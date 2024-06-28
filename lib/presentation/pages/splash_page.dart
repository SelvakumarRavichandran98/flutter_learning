import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/presentation/common/assets_path.dart';
import 'package:flutter_learning/presentation/common/colors.dart';
import 'package:flutter_learning/presentation/common/size_config.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SizedBox(
          width: 100.wp,
          height: 100.hp,
          child: Image.asset(
            ImagePath.idCard,
            width: 100.wp,
            height: 100.wr,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

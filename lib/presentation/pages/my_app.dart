import 'package:flutter/material.dart';
import 'package:flutter_learning/presentation/common/constants.dart';
import 'package:flutter_learning/presentation/core/injection.dart';
import 'package:flutter_learning/presentation/core/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();

    return MaterialApp.router(
      title: 'Flutter Learning',
      theme: theme,
      routerConfig: appRouter.config(),
    );
  }
}

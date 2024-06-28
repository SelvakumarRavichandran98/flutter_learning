import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning/presentation/core/injection.dart';
import 'package:flutter_learning/presentation/pages/my_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await configureDependencies(Environment.dev);
  runApp(const ProviderScope(child: MyApp()));
}

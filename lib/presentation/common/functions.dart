import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/presentation/common/size_config.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> appSnackBar(
  BuildContext context,
  String text,
) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 2,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10.wr),
      duration: const Duration(seconds: 5),
      content: Row(
        children: [
          Icon(Icons.info, color: Colors.white, size: 24.wr),
          SizedBox(width: 10.wr),
          AutoSizeText(
            text,
            style: TextStyle(fontSize: 16.sp, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

int appHash(String string) {
  int hash = 0xcbf29ce484222325;
  int i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }
  return hash;
}

import 'dart:ui';

extension NumX on num {
  static PlatformDispatcher platformDispatcher = PlatformDispatcher.instance;
  static FlutterView flutterView = platformDispatcher.views.first;

  static const Size defaultSize = Size(360, 624);
  static final double textScaleFactor = platformDispatcher.textScaleFactor;
  static final Size physicalSize = flutterView.physicalSize;
  static final double devicePixelRatio = flutterView.devicePixelRatio;

  static final Size logicalSize = physicalSize / devicePixelRatio;
  static final double ratioWidth = logicalSize.width / defaultSize.width;
  static final double ratioHeight = logicalSize.height / defaultSize.height;

  double get sp => this * textScaleFactor;
  double get wp => this * defaultSize.width * ratioWidth / 100;
  double get hp => this * defaultSize.height * ratioHeight / 100;

  double get wr => this * ratioWidth;
  double get hr => this * ratioHeight;
}

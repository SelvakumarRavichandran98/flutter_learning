import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera.freezed.dart';

@freezed
class CameraFailure with _$CameraFailure {
  const factory CameraFailure.cannotStart() = _CannotStart;

  const factory CameraFailure.unableToCapture() = _UnableToCapture;

  const factory CameraFailure.unableToPick() = _UnableToPick;
}

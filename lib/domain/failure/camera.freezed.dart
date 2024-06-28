// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotStart,
    required TResult Function() unableToCapture,
    required TResult Function() unableToPick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotStart,
    TResult? Function()? unableToCapture,
    TResult? Function()? unableToPick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotStart,
    TResult Function()? unableToCapture,
    TResult Function()? unableToPick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotStart value) cannotStart,
    required TResult Function(_UnableToCapture value) unableToCapture,
    required TResult Function(_UnableToPick value) unableToPick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotStart value)? cannotStart,
    TResult? Function(_UnableToCapture value)? unableToCapture,
    TResult? Function(_UnableToPick value)? unableToPick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotStart value)? cannotStart,
    TResult Function(_UnableToCapture value)? unableToCapture,
    TResult Function(_UnableToPick value)? unableToPick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraFailureCopyWith<$Res> {
  factory $CameraFailureCopyWith(
          CameraFailure value, $Res Function(CameraFailure) then) =
      _$CameraFailureCopyWithImpl<$Res, CameraFailure>;
}

/// @nodoc
class _$CameraFailureCopyWithImpl<$Res, $Val extends CameraFailure>
    implements $CameraFailureCopyWith<$Res> {
  _$CameraFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CannotStartImplCopyWith<$Res> {
  factory _$$CannotStartImplCopyWith(
          _$CannotStartImpl value, $Res Function(_$CannotStartImpl) then) =
      __$$CannotStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CannotStartImplCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res, _$CannotStartImpl>
    implements _$$CannotStartImplCopyWith<$Res> {
  __$$CannotStartImplCopyWithImpl(
      _$CannotStartImpl _value, $Res Function(_$CannotStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CannotStartImpl implements _CannotStart {
  const _$CannotStartImpl();

  @override
  String toString() {
    return 'CameraFailure.cannotStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CannotStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotStart,
    required TResult Function() unableToCapture,
    required TResult Function() unableToPick,
  }) {
    return cannotStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotStart,
    TResult? Function()? unableToCapture,
    TResult? Function()? unableToPick,
  }) {
    return cannotStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotStart,
    TResult Function()? unableToCapture,
    TResult Function()? unableToPick,
    required TResult orElse(),
  }) {
    if (cannotStart != null) {
      return cannotStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotStart value) cannotStart,
    required TResult Function(_UnableToCapture value) unableToCapture,
    required TResult Function(_UnableToPick value) unableToPick,
  }) {
    return cannotStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotStart value)? cannotStart,
    TResult? Function(_UnableToCapture value)? unableToCapture,
    TResult? Function(_UnableToPick value)? unableToPick,
  }) {
    return cannotStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotStart value)? cannotStart,
    TResult Function(_UnableToCapture value)? unableToCapture,
    TResult Function(_UnableToPick value)? unableToPick,
    required TResult orElse(),
  }) {
    if (cannotStart != null) {
      return cannotStart(this);
    }
    return orElse();
  }
}

abstract class _CannotStart implements CameraFailure {
  const factory _CannotStart() = _$CannotStartImpl;
}

/// @nodoc
abstract class _$$UnableToCaptureImplCopyWith<$Res> {
  factory _$$UnableToCaptureImplCopyWith(_$UnableToCaptureImpl value,
          $Res Function(_$UnableToCaptureImpl) then) =
      __$$UnableToCaptureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToCaptureImplCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res, _$UnableToCaptureImpl>
    implements _$$UnableToCaptureImplCopyWith<$Res> {
  __$$UnableToCaptureImplCopyWithImpl(
      _$UnableToCaptureImpl _value, $Res Function(_$UnableToCaptureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToCaptureImpl implements _UnableToCapture {
  const _$UnableToCaptureImpl();

  @override
  String toString() {
    return 'CameraFailure.unableToCapture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToCaptureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotStart,
    required TResult Function() unableToCapture,
    required TResult Function() unableToPick,
  }) {
    return unableToCapture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotStart,
    TResult? Function()? unableToCapture,
    TResult? Function()? unableToPick,
  }) {
    return unableToCapture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotStart,
    TResult Function()? unableToCapture,
    TResult Function()? unableToPick,
    required TResult orElse(),
  }) {
    if (unableToCapture != null) {
      return unableToCapture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotStart value) cannotStart,
    required TResult Function(_UnableToCapture value) unableToCapture,
    required TResult Function(_UnableToPick value) unableToPick,
  }) {
    return unableToCapture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotStart value)? cannotStart,
    TResult? Function(_UnableToCapture value)? unableToCapture,
    TResult? Function(_UnableToPick value)? unableToPick,
  }) {
    return unableToCapture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotStart value)? cannotStart,
    TResult Function(_UnableToCapture value)? unableToCapture,
    TResult Function(_UnableToPick value)? unableToPick,
    required TResult orElse(),
  }) {
    if (unableToCapture != null) {
      return unableToCapture(this);
    }
    return orElse();
  }
}

abstract class _UnableToCapture implements CameraFailure {
  const factory _UnableToCapture() = _$UnableToCaptureImpl;
}

/// @nodoc
abstract class _$$UnableToPickImplCopyWith<$Res> {
  factory _$$UnableToPickImplCopyWith(
          _$UnableToPickImpl value, $Res Function(_$UnableToPickImpl) then) =
      __$$UnableToPickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToPickImplCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res, _$UnableToPickImpl>
    implements _$$UnableToPickImplCopyWith<$Res> {
  __$$UnableToPickImplCopyWithImpl(
      _$UnableToPickImpl _value, $Res Function(_$UnableToPickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToPickImpl implements _UnableToPick {
  const _$UnableToPickImpl();

  @override
  String toString() {
    return 'CameraFailure.unableToPick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToPickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotStart,
    required TResult Function() unableToCapture,
    required TResult Function() unableToPick,
  }) {
    return unableToPick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotStart,
    TResult? Function()? unableToCapture,
    TResult? Function()? unableToPick,
  }) {
    return unableToPick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotStart,
    TResult Function()? unableToCapture,
    TResult Function()? unableToPick,
    required TResult orElse(),
  }) {
    if (unableToPick != null) {
      return unableToPick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotStart value) cannotStart,
    required TResult Function(_UnableToCapture value) unableToCapture,
    required TResult Function(_UnableToPick value) unableToPick,
  }) {
    return unableToPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotStart value)? cannotStart,
    TResult? Function(_UnableToCapture value)? unableToCapture,
    TResult? Function(_UnableToPick value)? unableToPick,
  }) {
    return unableToPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotStart value)? cannotStart,
    TResult Function(_UnableToCapture value)? unableToCapture,
    TResult Function(_UnableToPick value)? unableToPick,
    required TResult orElse(),
  }) {
    if (unableToPick != null) {
      return unableToPick(this);
    }
    return orElse();
  }
}

abstract class _UnableToPick implements CameraFailure {
  const factory _UnableToPick() = _$UnableToPickImpl;
}

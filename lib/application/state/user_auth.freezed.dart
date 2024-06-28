// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserAuthState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get isSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthStateCopyWith<UserAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res, UserAuthState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      Option<Either<AuthFailure, Unit>> isSuccess});
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res, $Val extends UserAuthState>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginStateImplCopyWith<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  factory _$$UserLoginStateImplCopyWith(_$UserLoginStateImpl value,
          $Res Function(_$UserLoginStateImpl) then) =
      __$$UserLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      Option<Either<AuthFailure, Unit>> isSuccess});
}

/// @nodoc
class __$$UserLoginStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserLoginStateImpl>
    implements _$$UserLoginStateImplCopyWith<$Res> {
  __$$UserLoginStateImplCopyWithImpl(
      _$UserLoginStateImpl _value, $Res Function(_$UserLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSuccess = null,
  }) {
    return _then(_$UserLoginStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$UserLoginStateImpl implements _UserLoginState {
  const _$UserLoginStateImpl(
      {required this.email, required this.password, required this.isSuccess});

  @override
  final Email email;
  @override
  final Password password;
  @override
  final Option<Either<AuthFailure, Unit>> isSuccess;

  @override
  String toString() {
    return 'UserAuthState(email: $email, password: $password, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginStateImplCopyWith<_$UserLoginStateImpl> get copyWith =>
      __$$UserLoginStateImplCopyWithImpl<_$UserLoginStateImpl>(
          this, _$identity);
}

abstract class _UserLoginState implements UserAuthState {
  const factory _UserLoginState(
          {required final Email email,
          required final Password password,
          required final Option<Either<AuthFailure, Unit>> isSuccess}) =
      _$UserLoginStateImpl;

  @override
  Email get email;
  @override
  Password get password;
  @override
  Option<Either<AuthFailure, Unit>> get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginStateImplCopyWith<_$UserLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

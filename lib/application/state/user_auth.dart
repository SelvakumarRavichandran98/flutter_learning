import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/failure/auth.dart';
import 'package:flutter_learning/domain/objects/email.dart';
import 'package:flutter_learning/domain/objects/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth.freezed.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState({
    required Email email,
    required Password password,
    required Option<Either<AuthFailure, Unit>> isSuccess,
  }) = _UserLoginState;

  factory UserAuthState.initial() {
    return UserAuthState(
      email: Email('swadataps@gmail.com'),
      password: Password('Swadata@123'),
      isSuccess: none(),
    );
  }
}

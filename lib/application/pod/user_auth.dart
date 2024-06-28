import 'package:dartz/dartz.dart';
import 'package:flutter_learning/application/state/user_auth.dart';
import 'package:flutter_learning/domain/failure/auth.dart';
import 'package:flutter_learning/domain/interface/user_auth.dart';
import 'package:flutter_learning/domain/objects/email.dart';
import 'package:flutter_learning/domain/objects/password.dart';
import 'package:flutter_learning/presentation/core/injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_auth.g.dart';

@riverpod
class UserAuthPod extends _$UserAuthPod {
  @override
  UserAuthState build() => UserAuthState.initial();

  final IUserAuth _userAuth = getIt<IUserAuth>();

  void emailChanged(String input) =>
      state = state.copyWith(email: Email(input), isSuccess: none());

  void passwordChanged(String input) =>
      state = state.copyWith(password: Password(input), isSuccess: none());

  Future<void> signInWithEmailAndPasswordPressed() async {
    state = state.copyWith(isSuccess: none());
    if (state.password.isValid() && state.email.isValid()) {
      final Either<AuthFailure, Unit> isSuccess =
          await _userAuth.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      isSuccess.fold(
        (l) => state = state.copyWith(isSuccess: optionOf(isSuccess)),
        (r) => state = state.copyWith(isSuccess: optionOf(isSuccess)),
      );
    }
  }
}

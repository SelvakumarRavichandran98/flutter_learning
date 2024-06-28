import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_learning/domain/failure/auth.dart';
import 'package:flutter_learning/domain/interface/user_auth.dart';
import 'package:flutter_learning/domain/objects/email.dart';
import 'package:flutter_learning/domain/objects/password.dart';
import 'package:flutter_learning/presentation/common/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserAuth)
class UserAuthImpl implements IUserAuth {
  const UserAuthImpl(@Named(database) this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required Email email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email.getOrCrash());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmail());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email.getOrCrash(),
        password: password.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (['user-not-found', 'wrong-password', 'user-disabled:']
          .contains(e.code)) {
        return left(const AuthFailure.invalidEmailPasswordCombination());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmail());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}

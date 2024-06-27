import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/failure/auth.dart';
import 'package:flutter_learning/domain/objects/email.dart';
import 'package:flutter_learning/domain/objects/password.dart';

abstract class IUserAuth {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required Email email,
  });
}

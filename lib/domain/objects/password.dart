import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:flutter_learning/domain/core/validator.dart';
import 'package:flutter_learning/domain/core/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class Password extends Value<String> {
  Password(String input)
      : this._(
          isExpectedStringMinLength(input.trim(), _length)
              .fold((l) => left(l), (r) => isPassword(r.value)),
        );

  const Password._(this.value);

  static const String hintText = 'Enter password here...';
  static const String labelText = 'Password';
  static const int _length = 10;

  @override
  final FailureOrSuccess<String> value;

  @override
  String? failureMessage([String? input = labelText]) {
    return value.fold(
      (l) => l.maybeMap(
        orElse: () => throw AppError(),
        notExpectedLength: (_) =>
            '$input should be atleast $_length characters long',
        notPassword: (_) =>
            '$input must contain 1 uppercase, 1 lowercase, 1 digit, 1 special character',
      ),
      (r) => null,
    );
  }
}

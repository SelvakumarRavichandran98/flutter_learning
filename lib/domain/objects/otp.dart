import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:flutter_learning/domain/core/validator.dart';
import 'package:flutter_learning/domain/core/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class Otp extends Value<int> {
  Otp(String input)
      : this._(
          isInteger(input.trim())
              .fold<FailureOrSuccess<int>>(
                (l) => left(l),
                (r) => isPositiveInteger(r.value),
              )
              .fold<FailureOrSuccess<int>>(
                (l) => left(l),
                (r) => isExpectedIntLength(r.value, _length),
              ),
        );

  const Otp._(this.value);

  static const String hintText = 'Enter otp here...';
  static const String labelText = 'Otp';
  static const int _length = 6;

  @override
  final FailureOrSuccess<int> value;

  @override
  String? failureMessage([String? input = labelText]) {
    return value.fold(
      (l) => l.maybeMap(
        orElse: () => throw AppError(),
        notExpectedLength: (_) => '$input should be $_length characters long',
        notExpectedValue: (_) => 'Invalid $input',
        notExpectedType: (_) => 'Invalid $input',
      ),
      (r) => null,
    );
  }
}

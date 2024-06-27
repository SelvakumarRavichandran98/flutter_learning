import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:flutter_learning/domain/core/validator.dart';
import 'package:flutter_learning/domain/core/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class Phone extends Value<int> {
  Phone(String input)
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

  const Phone._(this.value);

  static const String countryCode = '+91';
  static const String hintText = 'Enter phone here...';
  static const String labelText = 'Phone';
  static const int _length = 10;

  @override
  final FailureOrSuccess<int> value;

  @override
  String? failureMessage([String? input = labelText]) {
    return value.fold(
      (l) => l.maybeMap(
        orElse: () => throw AppError(),
        notExpectedLength: (_) =>
            '$input number should be $_length characters long',
        notExpectedValue: (_) => 'Invalid $input number',
        notExpectedType: (_) => 'Invalid $input number',
      ),
      (r) => null,
    );
  }
}

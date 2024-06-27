import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/failure.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class Value<T extends Object> {
  const Value();

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : other is Value<T> && other.toString() == toString();

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value.fold((l) => l.toString(), (r) => r.toString());

  FailureOrSuccess<T> get value;

  bool isValid() => value.isRight();

  T getInput() => value.fold((l) => l.value, (r) => r.value);

  T getOrCrash() =>
      value.fold((l) => throw AppError(failure: l), (r) => r.value);

  Option<Failure<Object>> isFailure() =>
      value.fold((l) => optionOf(l), (r) => none());

  String? failureMessage([String? input]) => null;
}

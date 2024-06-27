import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/failure.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:flutter_learning/domain/core/validator.dart';
import 'package:flutter_learning/domain/core/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
@immutable
class UniqueId extends Value<String> {
  UniqueId(String input) : this._(isStringNotEmpty(input.trim()));

  const UniqueId._(this.value);

  factory UniqueId.create() => UniqueId._(isStringNotEmpty(const Uuid().v4()));

  static const String hintText = 'Enter unique id here...';
  static const UniqueId initial =
      UniqueId._(Left(Failure.unknown(value: initialValue)));
  static const String initialValue = 'initial-----initial-----initial';
  static const String labelText = 'Unique id';
  static const UniqueId unauthenticated =
      UniqueId._(Left(Failure.unknown(value: unauthenticatedValue)));
  static const String unauthenticatedValue =
      'unauthenticated-----unauthenticated-----unauthenticated';

  @override
  final FailureOrSuccess<String> value;

  @override
  String? failureMessage([String? input = labelText]) {
    return value.fold(
      (l) => l.maybeMap(
        orElse: () => throw AppError(),
        unknown: (_) => '$input must not be empty',
      ),
      (r) => null,
    );
  }
}

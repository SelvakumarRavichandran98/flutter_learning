import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/success.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:flutter_learning/domain/core/validator.dart';
import 'package:flutter_learning/domain/core/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@injectable
@immutable
class Role extends Value<String> {
  Role(String input) : this._(isInList(input.trim(), list));

  const Role._(this.value);

  static const String hintText = 'Enter role here...';
  static const String initialValue = 'None';
  static const String labelText = 'Role';

  static final KtList<String> list = KtList.from(['Admin', 'None', 'Others']);

  static const Role initial = Role._(Right(Success(value: 'None')));

  @override
  final FailureOrSuccess<String> value;

  @override
  String? failureMessage([String? input = labelText]) {
    return value.fold(
      (l) => l.maybeMap(
        orElse: () => throw AppError(),
        notContains: (_) => 'Please select $input',
      ),
      (r) => null,
    );
  }
}

import 'package:flutter_learning/domain/core/error.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:flutter_learning/domain/core/validator.dart';
import 'package:flutter_learning/domain/core/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class Email extends Value<String> {
  Email(String input) : this._(isEmail(input.trim()));

  const Email._(this.value);

  static const String hintText = 'Enter email here...';
  static const String labelText = 'Email';

  @override
  final FailureOrSuccess<String> value;

  @override
  String? failureMessage([String? input = labelText]) {
    return value.fold(
      (l) => l.maybeMap(
        orElse: () => throw AppError(),
        notEmail: (_) => 'Invalid $input',
      ),
      (r) => null,
    );
  }
}

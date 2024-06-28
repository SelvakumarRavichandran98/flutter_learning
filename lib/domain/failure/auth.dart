import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;

  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;

  const factory AuthFailure.invalidCredential() = _InvalidCredential;

  const factory AuthFailure.invalidEmail() = _InvalidEmail;

  const factory AuthFailure.invalidEmailPasswordCombination() =
      _InvalidEmailPasswordCombination;

  const factory AuthFailure.invalidPhoneNumber() = _InvalidPhoneNumber;

  const factory AuthFailure.serverError() = _ServerError;
}

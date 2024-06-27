import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure<T> with _$Failure<T> {
  const Failure._();
  const factory Failure.empty({required T value}) = _Empty<T>;

  const factory Failure.fileNotExists({required T value}) = _FileNotExists<T>;

  const factory Failure.notAlpha({required T value}) = _NotAlpha<T>;

  const factory Failure.notAlphaNumeric({required T value}) =
      _NotAlphaNumeric<T>;

  const factory Failure.notAlphaNumericWithSpace({required T value}) =
      _NotAlphaNumericWithSpace<T>;

  const factory Failure.notAlphaWithSpace({required T value}) =
      _NotAlphaWithSpace<T>;

  const factory Failure.notBetween({
    required T value,
    required int min,
    required int max,
  }) = _NotBetween<T>;

  const factory Failure.notContains({required T value}) = _NotContains<T>;

  const factory Failure.notEmail({required T value}) = _NotEmail<T>;

  const factory Failure.notEmpty({required T value}) = _NotEmpty<T>;

  const factory Failure.notExpectedLength({
    required T value,
    required int length,
  }) = _NotExpectedIntLength<T>;

  const factory Failure.notExpectedType({required T value}) =
      _NotExpectedType<T>;

  const factory Failure.notExpectedValue({required T value}) =
      _NotExpectedValue<T>;

  const factory Failure.notImageFile({required T value}) = _NotImageFile<T>;

  const factory Failure.notPassword({required T value}) = _NotPassword<T>;

  const factory Failure.notUrl({required T value}) = _NotUrl<T>;

  const factory Failure.notValidAadhar({required T value}) = _NotValidAadhar<T>;

  const factory Failure.notValidFileSize({required T value}) =
      _NotValidFileSize<T>;

  const factory Failure.unknown({required T value}) = _UnKnown<T>;

  @override
  String toString() => 'Failure($value)';
}

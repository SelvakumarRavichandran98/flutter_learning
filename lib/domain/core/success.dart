import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

@freezed
class Success<T> with _$Success<T> {
  const Success._();

  const factory Success({required T value}) = _Success<T>;

  @override
  String toString() => 'Success($value)';
}

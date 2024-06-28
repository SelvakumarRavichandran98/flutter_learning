import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/failure.dart';
import 'package:flutter_learning/domain/core/success.dart';
import 'package:flutter_learning/domain/core/typedef.dart';
import 'package:kt_dart/kt.dart';

FailureOrSuccess<int> isInteger(String input) => int.tryParse(input) != null
    ? right(Success(value: int.parse(input)))
    : left(const Failure.notExpectedType(value: 0));

FailureOrSuccess<int> isPositiveInteger(int input) => input > 0
    ? right(Success(value: input))
    : left(Failure.notExpectedValue(value: input));

FailureOrSuccess<int> isExpectedIntLength(int input, int length) {
  final int quotient = input ~/ pow(10, length);
  return quotient >= 1 && quotient <= 9
      ? right(Success(value: input))
      : left(Failure.notExpectedLength(value: input, length: length));
}

FailureOrSuccess<double> isDouble(String input) =>
    double.tryParse(input) != null
        ? right(Success(value: double.parse(input)))
        : left(const Failure.notExpectedType(value: 0));

FailureOrSuccess<double> isPositiveDouble(double input) => input > 0
    ? right(Success(value: input))
    : left(Failure.notExpectedValue(value: input));

FailureOrSuccess<String> isStringNotEmpty(String input) => input.isNotEmpty
    ? right(Success(value: input))
    : left(Failure.empty(value: input));

FailureOrSuccess<String> isExpectedStringLength(String input, int length) =>
    input.length == length
        ? right(Success(value: input))
        : left(Failure.notExpectedLength(value: input, length: length));

FailureOrSuccess<String> isExpectedStringMinLength(String input, int length) =>
    input.length >= length
        ? right(Success(value: input))
        : left(Failure.notExpectedLength(value: input, length: length));

FailureOrSuccess<String> isExpectedStringMaxLength(String input, int length) =>
    input.length <= length
        ? right(Success(value: input))
        : left(Failure.notExpectedLength(value: input, length: length));

FailureOrSuccess<String> isAlpha(String input) =>
    RegExp('[^a-zA-Z]').hasMatch(input)
        ? left(Failure.notAlpha(value: input))
        : right(Success(value: input));

FailureOrSuccess<String> isAlphaWithSpace(String input) =>
    RegExp('[^a-zA-Z ]').hasMatch(input)
        ? left(Failure.notAlphaWithSpace(value: input))
        : right(Success(value: input));

FailureOrSuccess<String> isAlphaNumeric(String input) =>
    RegExp('[^a-zA-Z0-9]').hasMatch(input)
        ? left(Failure.notAlphaWithSpace(value: input))
        : right(Success(value: input));

FailureOrSuccess<String> isAlphaNumericWithSpace(String input) =>
    RegExp('[^a-zA-Z0-9 ]').hasMatch(input)
        ? left(Failure.notAlphaWithSpace(value: input))
        : right(Success(value: input));

FailureOrSuccess<KtList<T>> isListEmpty<T>(KtList<T> input) => input.isEmpty()
    ? right(Success(value: input))
    : left(Failure.notEmpty(value: input));

FailureOrSuccess<KtList<T>> isListNotEmpty<T>(KtList<T> input) =>
    input.isNotEmpty()
        ? right(Success(value: input))
        : left(Failure.empty(value: input));

FailureOrSuccess<KtList<T>> isExpectedListLength<T>(
  KtList<T> input,
  int length,
) =>
    input.size == length
        ? right(Success(value: input))
        : left(Failure.notExpectedLength(value: input, length: length));

FailureOrSuccess<KtList<T>> isValidList<T>(
  KtList<T> input,
  FailureOrSuccess<T> Function(T) validate,
) =>
    input.map((e) => validate(e)).all((e) => e.isRight())
        ? right(Success(value: input))
        : left(Failure.notExpectedValue(value: input));

FailureOrSuccess<T> isInList<T>(T input, KtList<T> list) => list.contains(input)
    ? right(Success(value: input))
    : left(Failure.notContains(value: input));

FailureOrSuccess<String> isUrl(String input) => Uri.parse(input).isAbsolute
    ? right(Success(value: input))
    : left(Failure.notUrl(value: input));

FailureOrSuccess<File> isFileExists(File input) => input.existsSync()
    ? right(Success(value: input))
    : left(Failure.fileNotExists(value: input));

FailureOrSuccess<int> isBetween(int input, int min, int max) =>
    (input <= max) && (input >= min)
        ? right(Success(value: input))
        : left(Failure.notBetween(value: input, min: min, max: max));

FailureOrSuccess<String> isEmail(String input) =>
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(input)
        ? right(Success(value: input))
        : left(Failure.notEmail(value: input));

FailureOrSuccess<String> isPassword(String input) =>
    RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{10,}$')
            .hasMatch(input)
        ? right(Success(value: input))
        : left(Failure.notPassword(value: input));

FailureOrSuccess<File> isImageFile(File input, KtList<String> imageExtensions) {
  final String extension =
      input.path.split('/').last.split('.').last.toLowerCase();
  return imageExtensions.contains(extension)
      ? right(Success(value: input))
      : left(Failure.notImageFile(value: input));
}

FailureOrSuccess<File> isValidFileSize(File input, int sizeInMb) {
  try {
    return input.lengthSync() / (1024 * 1024) <= sizeInMb
        ? right(Success(value: input))
        : left(Failure.notValidFileSize(value: input));
  } on FileSystemException {
    return left(Failure.notValidFileSize(value: input));
  }
}

FailureOrSuccess<int> isAadhar(int input) {
  final List<List<int>> multiplication = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 0, 6, 7, 8, 9, 5],
    [2, 3, 4, 0, 1, 7, 8, 9, 5, 6],
    [3, 4, 0, 1, 2, 8, 9, 5, 6, 7],
    [4, 0, 1, 2, 3, 9, 5, 6, 7, 8],
    [5, 9, 8, 7, 6, 0, 4, 3, 2, 1],
    [6, 5, 9, 8, 7, 1, 0, 4, 3, 2],
    [7, 6, 5, 9, 8, 2, 1, 0, 4, 3],
    [8, 7, 6, 5, 9, 3, 2, 1, 0, 4],
    [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
  ];

  final List<List<int>> permutation = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 5, 7, 6, 2, 8, 3, 0, 9, 4],
    [5, 8, 0, 3, 7, 9, 6, 1, 4, 2],
    [8, 9, 1, 6, 0, 4, 3, 5, 2, 7],
    [9, 4, 5, 3, 1, 2, 6, 8, 7, 0],
    [4, 2, 8, 6, 5, 7, 3, 9, 0, 1],
    [2, 7, 9, 3, 8, 0, 6, 4, 1, 5],
    [7, 0, 4, 6, 9, 1, 3, 2, 5, 8]
  ];

  final String inputStr = '$input';
  int i = inputStr.length;
  int j = 0;
  int x = 0;

  while (i > 0) {
    i -= 1;
    x = multiplication[x][permutation[(j % 8)][int.parse(inputStr[i])]];
    j += 1;
  }

  return x == 0
      ? right(Success(value: input))
      : left(Failure.notValidAadhar(value: input));
}

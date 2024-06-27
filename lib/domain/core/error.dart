import 'package:flutter_learning/domain/core/failure.dart';

class AppError extends Error {
  AppError({this.failure = const Failure.unknown(value: '')});

  final Failure failure;

  @override
  String toString() => Error.safeToString(
        '''Encountered a ValueFailure at an unrecoverable point.
        Failure was: $failure. Terminating...''',
      );
}

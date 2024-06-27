import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/failure.dart';
import 'package:flutter_learning/domain/core/success.dart';

typedef FailureOrSuccess<T> = Either<Failure<T>, Success<T>>;

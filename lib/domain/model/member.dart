import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/failure.dart';
import 'package:flutter_learning/domain/objects/phone.dart';
import 'package:flutter_learning/domain/objects/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  const Member._();

  const factory Member({
    required UniqueId uid,
    required bool peerReview,
    required Phone phone,
    required UniqueId updatedBy,
    required bool isDeleted,
  }) = _Member;

  factory Member.empty() {
    return Member(
      uid: UniqueId.create(),
      peerReview: false,
      phone: Phone('9876543210'),
      updatedBy: UniqueId('IFnXmhatOyXaHVYkR4jZqLfX8QC2'),
      isDeleted: false,
    );
  }

  Option<Failure<Object>> isFailure() {
    return uid.isFailure().orElse(phone.isFailure).orElse(updatedBy.isFailure);
  }
}

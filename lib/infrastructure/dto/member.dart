import 'package:flutter_learning/domain/model/member.dart';
import 'package:flutter_learning/domain/objects/phone.dart';
import 'package:flutter_learning/domain/objects/unique_id.dart';
import 'package:flutter_learning/infrastructure/converter/timestamp_datetime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class MemberDto with _$MemberDto {
  const factory MemberDto({
    required String uid,
    required bool peerReview,
    required int phone,
    required String updatedBy,
    required bool isDeleted,
    @TimeStampDateTimeConverter() required DateTime updatedOn,
  }) = _MemberDto;

  const MemberDto._();

  factory MemberDto.fromDomain(Member member) {
    return MemberDto(
      uid: member.uid.getOrCrash(),
      peerReview: member.peerReview,
      phone: member.phone.getOrCrash(),
      updatedBy: member.updatedBy.getOrCrash(),
      isDeleted: member.isDeleted,
      updatedOn: DateTime.now(),
    );
  }

  factory MemberDto.fromJson(Map<String, Object> json) =>
      _$MemberDtoFromJson(json);

  Member toDomain() {
    return Member(
      uid: UniqueId(uid),
      peerReview: peerReview,
      phone: Phone('$phone'),
      updatedBy: UniqueId(updatedBy),
      isDeleted: isDeleted,
    );
  }
}

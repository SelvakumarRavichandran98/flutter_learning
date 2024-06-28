// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberDtoImpl _$$MemberDtoImplFromJson(Map<String, dynamic> json) =>
    _$MemberDtoImpl(
      uid: json['uid'] as String,
      peerReview: json['peerReview'] as bool,
      phone: (json['phone'] as num).toInt(),
      updatedBy: json['updatedBy'] as String,
      isDeleted: json['isDeleted'] as bool,
      updatedOn: const TimeStampDateTimeConverter()
          .fromJson(json['updatedOn'] as Timestamp),
    );

Map<String, dynamic> _$$MemberDtoImplToJson(_$MemberDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'peerReview': instance.peerReview,
      'phone': instance.phone,
      'updatedBy': instance.updatedBy,
      'isDeleted': instance.isDeleted,
      'updatedOn':
          const TimeStampDateTimeConverter().toJson(instance.updatedOn),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetsModel _$$_MeetsModelFromJson(Map<String, dynamic> json) =>
    _$_MeetsModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      meetingDescription: json['meetingDescription'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      meetingDate: json['meetingDate'] == null
          ? null
          : DateTime.parse(json['meetingDate'] as String),
      creator: json['creator'] as String?,
      meetingLink: json['meetingLink'] as String?,
      courseId: json['courseId'] as String?,
      location: json['location'] as String?,
      isOnline: json['isOnline'] as bool?,
      guestsLimit: json['guestsLimit'] as int?,
      guests: (json['guests'] as List<dynamic>?)
          ?.map((e) => MeetsGuestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MeetsModelToJson(_$_MeetsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'meetingDescription': instance.meetingDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'meetingDate': instance.meetingDate?.toIso8601String(),
      'creator': instance.creator,
      'meetingLink': instance.meetingLink,
      'courseId': instance.courseId,
      'location': instance.location,
      'isOnline': instance.isOnline,
      'guestsLimit': instance.guestsLimit,
      'guests': instance.guests,
    };

_$_MeetsGuestModel _$$_MeetsGuestModelFromJson(Map<String, dynamic> json) =>
    _$_MeetsGuestModel(
      guestUid: json['guestUid'] as String?,
      guestName: json['guestName'] as String?,
      courseInfo: json['courseInfo'] == null
          ? null
          : CourseInfoModel.fromJson(
              json['courseInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MeetsGuestModelToJson(_$_MeetsGuestModel instance) =>
    <String, dynamic>{
      'guestUid': instance.guestUid,
      'guestName': instance.guestName,
      'courseInfo': instance.courseInfo,
    };

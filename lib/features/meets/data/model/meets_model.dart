import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';

part 'meets_model.freezed.dart';
part 'meets_model.g.dart';

@Freezed()
class MeetsModel with _$MeetsModel {
  factory MeetsModel({
    final String? id,
    final String? title,
    final String? meetingDescription,
    final DateTime? createdAt,
    final DateTime? meetingDate,
    final String? creator,
    final String? meetingLink,
    final String? courseId,
    final String? location,
    final bool? isOnline,
    final int? guestsLimit,
    final List<MeetsGuestModel>? guests,
  }) = _MeetsModel;

  factory MeetsModel.fromJson(Map<String, dynamic> json) =>
      _$MeetsModelFromJson(json);
}

@Freezed()
class MeetsGuestModel with _$MeetsGuestModel {
  factory MeetsGuestModel({
    final String? guestUid,
    final String? guestName,
    final CourseInfoModel? courseInfo,
  }) = _MeetsGuestModel;

  factory MeetsGuestModel.fromJson(Map<String, dynamic> json) =>
      _$MeetsGuestModelFromJson(json);
}

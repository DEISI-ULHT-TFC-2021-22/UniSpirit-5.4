import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_info_model.freezed.dart';
part 'course_info_model.g.dart';

@Freezed()
class CourseInfoModel with _$CourseInfoModel {
  factory CourseInfoModel({
    final String? courseId,
    final String? courseName,
    final String? universityName,
  }) = _CourseInfoModel;

  factory CourseInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CourseInfoModelFromJson(json);
}

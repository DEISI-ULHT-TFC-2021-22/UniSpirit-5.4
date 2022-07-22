import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';

abstract class MeetsRepository {
  Future<void> addCourseCategory(CourseInfoModel courseInfoModel);

  Future<List<CourseInfoModel>?> courseCategories();

  Stream<List<MeetsModel>?> meets(String courseId);

  Stream<List<MeetsGuestModel>?> meetGuests(String meetingId);

  Future<void> saveMeet(MeetsModel meetsModel);

  Future<void> joinMeet({
    required String meetId,
    required MeetsGuestModel guestModel,
  });

  Future<void> leaveMeet({required String meetId, required String guestUid});
}

import 'package:flutter/cupertino.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';
import 'package:projectunispiritfinalt/features/meets/data/repository/meets_repository_impl.dart';

// UI -> MeetsProvider -> UseCase (skipped) -> Repository -> DataSource
class MeetsProvider with ChangeNotifier {
  MeetsProvider(this._repositoryImpl);

  final MeetsRepositoryImpl _repositoryImpl;

  List<CourseInfoModel> meetsCategories = [];

  Future<void> addCourseCategory(CourseInfoModel courseInfoModel) async {
    return _repositoryImpl.addCourseCategory(courseInfoModel);
  }

  Future<void> getCourseCategories() async {
    meetsCategories = await _repositoryImpl.courseCategories() ?? [];
    notifyListeners();
  }

  Stream<List<MeetsModel>?> getMeets(String courseId) async* {
    yield* _repositoryImpl.meets(courseId);
  }

  Stream<List<MeetsGuestModel>?> getMeetsGuests(String meetingId) async* {
    yield* _repositoryImpl.meetGuests(meetingId);
  }

  Future<void> saveMeet(MeetsModel meetsModel) async {
    return _repositoryImpl.saveMeet(meetsModel);
  }

  Future<void> joinMeet({
    required String meetId,
    required MeetsGuestModel guestModel,
  }) async {
    return _repositoryImpl.joinMeet(meetId: meetId, guestModel: guestModel);
  }

  Future<void> leaveMeet({
    required String meetId,
    required String guestUid,
  }) async {
    return _repositoryImpl.leaveMeet(meetId: meetId, guestUid: guestUid);
  }
}

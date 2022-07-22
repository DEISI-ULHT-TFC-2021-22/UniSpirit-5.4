import 'dart:developer';

import 'package:projectunispiritfinalt/core/config/network_info.dart';
import 'package:projectunispiritfinalt/features/meets/data/data_source/remote_data_source.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';
import 'package:projectunispiritfinalt/features/meets/domain/repository.dart';

class MeetsRepositoryImpl implements MeetsRepository {
  const MeetsRepositoryImpl(this._netWorkInfoImpl, this._remoteDataSource);

  final NetworkInfoImpl _netWorkInfoImpl;
  final MeetsRemoteDataSourceImpl _remoteDataSource;

  @override
  Future<void> addCourseCategory(CourseInfoModel courseInfoModel) async {
    try {
      if (await _netWorkInfoImpl.hasConnection) {
        return _remoteDataSource.addCourseCategory(courseInfoModel);
      }
      throw Exception('no internet');
    } catch (error) {
      log(error.toString());
    }
  }

  @override
  Future<List<CourseInfoModel>?> courseCategories() async {
    if (await _netWorkInfoImpl.hasConnection) {
      return _remoteDataSource.courseCategories();
    }
    throw Exception('no internet');
  }

  @override
  Stream<List<MeetsModel>?> meets(String courseId) async* {
    yield* _remoteDataSource.meets(courseId);
  }

  @override
  Stream<List<MeetsGuestModel>?> meetGuests(String meetingId) async* {
    yield* _remoteDataSource.meetGuests(meetingId);
  }

  @override
  Future<void> saveMeet(MeetsModel meetsModel) async {
    if (await _netWorkInfoImpl.hasConnection) {
      return _remoteDataSource.saveMeet(meetsModel);
    }
    throw Exception('no internet');
  }

  @override
  Future<void> joinMeet({
    required String meetId,
    required MeetsGuestModel guestModel,
  }) async {
    if (await _netWorkInfoImpl.hasConnection) {
      return _remoteDataSource.joinMeet(meetId: meetId, guestModel: guestModel);
    }
    throw Exception('no internet');
  }

  @override
  Future<void> leaveMeet({
    required String meetId,
    required String guestUid,
  }) async {
    if (await _netWorkInfoImpl.hasConnection) {
      return _remoteDataSource.leaveMeet(meetId: meetId, guestUid: guestUid);
    }
    throw Exception('no internet');
  }
}

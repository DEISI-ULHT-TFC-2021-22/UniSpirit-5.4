import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectunispiritfinalt/features/meets/data/data_source/data_source.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';

// MeetsRemoteDataSourceImplementation
class MeetsRemoteDataSourceImpl implements MeetsDataSource {
  const MeetsRemoteDataSourceImpl(this._firebase);

  final FirebaseFirestore _firebase;

  @override
  Future<void> addCourseCategory(CourseInfoModel courseInfoModel) async {
    final documentRef = await _firebase
        .collection('meets-categories')
        .add(courseInfoModel.toJson());

    return _firebase
        .doc('meets-categories/${documentRef.id}')
        .update({'courseId': documentRef.id});
  }

  @override
  Future<List<CourseInfoModel>?> courseCategories() async {
    final querySnapshot = await _firebase.collection('meets-categories').get();
    return querySnapshot.docs.map((doc) {
      return CourseInfoModel.fromJson(doc.data());
    }).toList();
  }

  @override
  Stream<List<MeetsModel>?> meets(String courseId) async* {
    yield* _firebase
        .collection('meets')
        .where('courseId', isEqualTo: courseId)
        .snapshots()
        .map((query) {
      return query.docs.map((element) {
        return MeetsModel.fromJson(element.data());
      }).toList();
    });
  }

  @override
  Stream<List<MeetsGuestModel>?> meetGuests(String meetingId) async* {
   yield* _firebase.collection('meets/$meetingId/guests').snapshots().map((query) {
      return query.docs.map((element) {
        return MeetsGuestModel.fromJson(element.data());
      }).toList();
    });
  }

  @override
  Future<void> saveMeet(MeetsModel meetsModel) async {
    final documentRef =
        await _firebase.collection('meets').add(meetsModel.toJson());

    return _firebase
        .doc('meets/${documentRef.id}')
        .update({'id': documentRef.id}).then((_) {
      log('added a new meeting');
    });
  }

  @override
  Future<void> joinMeet({
    required String meetId,
    required MeetsGuestModel guestModel,
  }) async {
    try {
      await _firebase
          .doc('meets/$meetId/guests/${guestModel.guestUid}')
          .set(guestModel.toJson());
      log('user: ${guestModel.guestUid} joined meeting: $meetId');
    } catch (error) {
      log('$error');
    }
  }

  @override
  Future<void> leaveMeet({
    required String meetId,
    required String guestUid,
  }) async {
    try {
      await _firebase.doc('meets/$meetId/guests/$guestUid').delete();
    } catch (error) {
      log('$error');
    }
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetsModel _$MeetsModelFromJson(Map<String, dynamic> json) {
  return _MeetsModel.fromJson(json);
}

/// @nodoc
mixin _$MeetsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get meetingDescription => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get meetingDate => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  String? get meetingLink => throw _privateConstructorUsedError;
  String? get courseId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  int? get guestsLimit => throw _privateConstructorUsedError;
  List<MeetsGuestModel>? get guests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetsModelCopyWith<MeetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetsModelCopyWith<$Res> {
  factory $MeetsModelCopyWith(
          MeetsModel value, $Res Function(MeetsModel) then) =
      _$MeetsModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? meetingDescription,
      DateTime? createdAt,
      DateTime? meetingDate,
      String? creator,
      String? meetingLink,
      String? courseId,
      String? location,
      bool? isOnline,
      int? guestsLimit,
      List<MeetsGuestModel>? guests});
}

/// @nodoc
class _$MeetsModelCopyWithImpl<$Res> implements $MeetsModelCopyWith<$Res> {
  _$MeetsModelCopyWithImpl(this._value, this._then);

  final MeetsModel _value;
  // ignore: unused_field
  final $Res Function(MeetsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? meetingDescription = freezed,
    Object? createdAt = freezed,
    Object? meetingDate = freezed,
    Object? creator = freezed,
    Object? meetingLink = freezed,
    Object? courseId = freezed,
    Object? location = freezed,
    Object? isOnline = freezed,
    Object? guestsLimit = freezed,
    Object? guests = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingDescription: meetingDescription == freezed
          ? _value.meetingDescription
          : meetingDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingDate: meetingDate == freezed
          ? _value.meetingDate
          : meetingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingLink: meetingLink == freezed
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      guestsLimit: guestsLimit == freezed
          ? _value.guestsLimit
          : guestsLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      guests: guests == freezed
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<MeetsGuestModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MeetsModelCopyWith<$Res>
    implements $MeetsModelCopyWith<$Res> {
  factory _$$_MeetsModelCopyWith(
          _$_MeetsModel value, $Res Function(_$_MeetsModel) then) =
      __$$_MeetsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? meetingDescription,
      DateTime? createdAt,
      DateTime? meetingDate,
      String? creator,
      String? meetingLink,
      String? courseId,
      String? location,
      bool? isOnline,
      int? guestsLimit,
      List<MeetsGuestModel>? guests});
}

/// @nodoc
class __$$_MeetsModelCopyWithImpl<$Res> extends _$MeetsModelCopyWithImpl<$Res>
    implements _$$_MeetsModelCopyWith<$Res> {
  __$$_MeetsModelCopyWithImpl(
      _$_MeetsModel _value, $Res Function(_$_MeetsModel) _then)
      : super(_value, (v) => _then(v as _$_MeetsModel));

  @override
  _$_MeetsModel get _value => super._value as _$_MeetsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? meetingDescription = freezed,
    Object? createdAt = freezed,
    Object? meetingDate = freezed,
    Object? creator = freezed,
    Object? meetingLink = freezed,
    Object? courseId = freezed,
    Object? location = freezed,
    Object? isOnline = freezed,
    Object? guestsLimit = freezed,
    Object? guests = freezed,
  }) {
    return _then(_$_MeetsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingDescription: meetingDescription == freezed
          ? _value.meetingDescription
          : meetingDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingDate: meetingDate == freezed
          ? _value.meetingDate
          : meetingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingLink: meetingLink == freezed
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      guestsLimit: guestsLimit == freezed
          ? _value.guestsLimit
          : guestsLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      guests: guests == freezed
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<MeetsGuestModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetsModel implements _MeetsModel {
  _$_MeetsModel(
      {this.id,
      this.title,
      this.meetingDescription,
      this.createdAt,
      this.meetingDate,
      this.creator,
      this.meetingLink,
      this.courseId,
      this.location,
      this.isOnline,
      this.guestsLimit,
      final List<MeetsGuestModel>? guests})
      : _guests = guests;

  factory _$_MeetsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MeetsModelFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? meetingDescription;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? meetingDate;
  @override
  final String? creator;
  @override
  final String? meetingLink;
  @override
  final String? courseId;
  @override
  final String? location;
  @override
  final bool? isOnline;
  @override
  final int? guestsLimit;
  final List<MeetsGuestModel>? _guests;
  @override
  List<MeetsGuestModel>? get guests {
    final value = _guests;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeetsModel(id: $id, title: $title, meetingDescription: $meetingDescription, createdAt: $createdAt, meetingDate: $meetingDate, creator: $creator, meetingLink: $meetingLink, courseId: $courseId, location: $location, isOnline: $isOnline, guestsLimit: $guestsLimit, guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.meetingDescription, meetingDescription) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.meetingDate, meetingDate) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality()
                .equals(other.meetingLink, meetingLink) &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality()
                .equals(other.guestsLimit, guestsLimit) &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(meetingDescription),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(meetingDate),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(meetingLink),
      const DeepCollectionEquality().hash(courseId),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(guestsLimit),
      const DeepCollectionEquality().hash(_guests));

  @JsonKey(ignore: true)
  @override
  _$$_MeetsModelCopyWith<_$_MeetsModel> get copyWith =>
      __$$_MeetsModelCopyWithImpl<_$_MeetsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetsModelToJson(this);
  }
}

abstract class _MeetsModel implements MeetsModel {
  factory _MeetsModel(
      {final String? id,
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
      final List<MeetsGuestModel>? guests}) = _$_MeetsModel;

  factory _MeetsModel.fromJson(Map<String, dynamic> json) =
      _$_MeetsModel.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get meetingDescription;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get meetingDate;
  @override
  String? get creator;
  @override
  String? get meetingLink;
  @override
  String? get courseId;
  @override
  String? get location;
  @override
  bool? get isOnline;
  @override
  int? get guestsLimit;
  @override
  List<MeetsGuestModel>? get guests;
  @override
  @JsonKey(ignore: true)
  _$$_MeetsModelCopyWith<_$_MeetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetsGuestModel _$MeetsGuestModelFromJson(Map<String, dynamic> json) {
  return _MeetsGuestModel.fromJson(json);
}

/// @nodoc
mixin _$MeetsGuestModel {
  String? get guestUid => throw _privateConstructorUsedError;
  String? get guestName => throw _privateConstructorUsedError;
  CourseInfoModel? get courseInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetsGuestModelCopyWith<MeetsGuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetsGuestModelCopyWith<$Res> {
  factory $MeetsGuestModelCopyWith(
          MeetsGuestModel value, $Res Function(MeetsGuestModel) then) =
      _$MeetsGuestModelCopyWithImpl<$Res>;
  $Res call({String? guestUid, String? guestName, CourseInfoModel? courseInfo});

  $CourseInfoModelCopyWith<$Res>? get courseInfo;
}

/// @nodoc
class _$MeetsGuestModelCopyWithImpl<$Res>
    implements $MeetsGuestModelCopyWith<$Res> {
  _$MeetsGuestModelCopyWithImpl(this._value, this._then);

  final MeetsGuestModel _value;
  // ignore: unused_field
  final $Res Function(MeetsGuestModel) _then;

  @override
  $Res call({
    Object? guestUid = freezed,
    Object? guestName = freezed,
    Object? courseInfo = freezed,
  }) {
    return _then(_value.copyWith(
      guestUid: guestUid == freezed
          ? _value.guestUid
          : guestUid // ignore: cast_nullable_to_non_nullable
              as String?,
      guestName: guestName == freezed
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseInfo: courseInfo == freezed
          ? _value.courseInfo
          : courseInfo // ignore: cast_nullable_to_non_nullable
              as CourseInfoModel?,
    ));
  }

  @override
  $CourseInfoModelCopyWith<$Res>? get courseInfo {
    if (_value.courseInfo == null) {
      return null;
    }

    return $CourseInfoModelCopyWith<$Res>(_value.courseInfo!, (value) {
      return _then(_value.copyWith(courseInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_MeetsGuestModelCopyWith<$Res>
    implements $MeetsGuestModelCopyWith<$Res> {
  factory _$$_MeetsGuestModelCopyWith(
          _$_MeetsGuestModel value, $Res Function(_$_MeetsGuestModel) then) =
      __$$_MeetsGuestModelCopyWithImpl<$Res>;
  @override
  $Res call({String? guestUid, String? guestName, CourseInfoModel? courseInfo});

  @override
  $CourseInfoModelCopyWith<$Res>? get courseInfo;
}

/// @nodoc
class __$$_MeetsGuestModelCopyWithImpl<$Res>
    extends _$MeetsGuestModelCopyWithImpl<$Res>
    implements _$$_MeetsGuestModelCopyWith<$Res> {
  __$$_MeetsGuestModelCopyWithImpl(
      _$_MeetsGuestModel _value, $Res Function(_$_MeetsGuestModel) _then)
      : super(_value, (v) => _then(v as _$_MeetsGuestModel));

  @override
  _$_MeetsGuestModel get _value => super._value as _$_MeetsGuestModel;

  @override
  $Res call({
    Object? guestUid = freezed,
    Object? guestName = freezed,
    Object? courseInfo = freezed,
  }) {
    return _then(_$_MeetsGuestModel(
      guestUid: guestUid == freezed
          ? _value.guestUid
          : guestUid // ignore: cast_nullable_to_non_nullable
              as String?,
      guestName: guestName == freezed
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseInfo: courseInfo == freezed
          ? _value.courseInfo
          : courseInfo // ignore: cast_nullable_to_non_nullable
              as CourseInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetsGuestModel implements _MeetsGuestModel {
  _$_MeetsGuestModel({this.guestUid, this.guestName, this.courseInfo});

  factory _$_MeetsGuestModel.fromJson(Map<String, dynamic> json) =>
      _$$_MeetsGuestModelFromJson(json);

  @override
  final String? guestUid;
  @override
  final String? guestName;
  @override
  final CourseInfoModel? courseInfo;

  @override
  String toString() {
    return 'MeetsGuestModel(guestUid: $guestUid, guestName: $guestName, courseInfo: $courseInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetsGuestModel &&
            const DeepCollectionEquality().equals(other.guestUid, guestUid) &&
            const DeepCollectionEquality().equals(other.guestName, guestName) &&
            const DeepCollectionEquality()
                .equals(other.courseInfo, courseInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(guestUid),
      const DeepCollectionEquality().hash(guestName),
      const DeepCollectionEquality().hash(courseInfo));

  @JsonKey(ignore: true)
  @override
  _$$_MeetsGuestModelCopyWith<_$_MeetsGuestModel> get copyWith =>
      __$$_MeetsGuestModelCopyWithImpl<_$_MeetsGuestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetsGuestModelToJson(this);
  }
}

abstract class _MeetsGuestModel implements MeetsGuestModel {
  factory _MeetsGuestModel(
      {final String? guestUid,
      final String? guestName,
      final CourseInfoModel? courseInfo}) = _$_MeetsGuestModel;

  factory _MeetsGuestModel.fromJson(Map<String, dynamic> json) =
      _$_MeetsGuestModel.fromJson;

  @override
  String? get guestUid;
  @override
  String? get guestName;
  @override
  CourseInfoModel? get courseInfo;
  @override
  @JsonKey(ignore: true)
  _$$_MeetsGuestModelCopyWith<_$_MeetsGuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

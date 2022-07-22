// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseInfoModel _$CourseInfoModelFromJson(Map<String, dynamic> json) {
  return _CourseInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CourseInfoModel {
  String? get courseId => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;
  String? get universityName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseInfoModelCopyWith<CourseInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseInfoModelCopyWith<$Res> {
  factory $CourseInfoModelCopyWith(
          CourseInfoModel value, $Res Function(CourseInfoModel) then) =
      _$CourseInfoModelCopyWithImpl<$Res>;
  $Res call({String? courseId, String? courseName, String? universityName});
}

/// @nodoc
class _$CourseInfoModelCopyWithImpl<$Res>
    implements $CourseInfoModelCopyWith<$Res> {
  _$CourseInfoModelCopyWithImpl(this._value, this._then);

  final CourseInfoModel _value;
  // ignore: unused_field
  final $Res Function(CourseInfoModel) _then;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? courseName = freezed,
    Object? universityName = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CourseInfoModelCopyWith<$Res>
    implements $CourseInfoModelCopyWith<$Res> {
  factory _$$_CourseInfoModelCopyWith(
          _$_CourseInfoModel value, $Res Function(_$_CourseInfoModel) then) =
      __$$_CourseInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({String? courseId, String? courseName, String? universityName});
}

/// @nodoc
class __$$_CourseInfoModelCopyWithImpl<$Res>
    extends _$CourseInfoModelCopyWithImpl<$Res>
    implements _$$_CourseInfoModelCopyWith<$Res> {
  __$$_CourseInfoModelCopyWithImpl(
      _$_CourseInfoModel _value, $Res Function(_$_CourseInfoModel) _then)
      : super(_value, (v) => _then(v as _$_CourseInfoModel));

  @override
  _$_CourseInfoModel get _value => super._value as _$_CourseInfoModel;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? courseName = freezed,
    Object? universityName = freezed,
  }) {
    return _then(_$_CourseInfoModel(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseInfoModel implements _CourseInfoModel {
  _$_CourseInfoModel({this.courseId, this.courseName, this.universityName});

  factory _$_CourseInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseInfoModelFromJson(json);

  @override
  final String? courseId;
  @override
  final String? courseName;
  @override
  final String? universityName;

  @override
  String toString() {
    return 'CourseInfoModel(courseId: $courseId, courseName: $courseName, universityName: $universityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseInfoModel &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            const DeepCollectionEquality()
                .equals(other.courseName, courseName) &&
            const DeepCollectionEquality()
                .equals(other.universityName, universityName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(courseId),
      const DeepCollectionEquality().hash(courseName),
      const DeepCollectionEquality().hash(universityName));

  @JsonKey(ignore: true)
  @override
  _$$_CourseInfoModelCopyWith<_$_CourseInfoModel> get copyWith =>
      __$$_CourseInfoModelCopyWithImpl<_$_CourseInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseInfoModelToJson(this);
  }
}

abstract class _CourseInfoModel implements CourseInfoModel {
  factory _CourseInfoModel(
      {final String? courseId,
      final String? courseName,
      final String? universityName}) = _$_CourseInfoModel;

  factory _CourseInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CourseInfoModel.fromJson;

  @override
  String? get courseId;
  @override
  String? get courseName;
  @override
  String? get universityName;
  @override
  @JsonKey(ignore: true)
  _$$_CourseInfoModelCopyWith<_$_CourseInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

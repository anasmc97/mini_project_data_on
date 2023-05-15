// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniversityState {
  List<University> get universitys => throw _privateConstructorUsedError;
  List<University> get universitysSearched =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, List<University>>> get universitysOrFailureOption =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversityStateCopyWith<UniversityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityStateCopyWith<$Res> {
  factory $UniversityStateCopyWith(
          UniversityState value, $Res Function(UniversityState) then) =
      _$UniversityStateCopyWithImpl<$Res, UniversityState>;
  @useResult
  $Res call(
      {List<University> universitys,
      List<University> universitysSearched,
      Option<Either<Failure, List<University>>> universitysOrFailureOption,
      Status status});
}

/// @nodoc
class _$UniversityStateCopyWithImpl<$Res, $Val extends UniversityState>
    implements $UniversityStateCopyWith<$Res> {
  _$UniversityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universitys = null,
    Object? universitysSearched = null,
    Object? universitysOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      universitys: null == universitys
          ? _value.universitys
          : universitys // ignore: cast_nullable_to_non_nullable
              as List<University>,
      universitysSearched: null == universitysSearched
          ? _value.universitysSearched
          : universitysSearched // ignore: cast_nullable_to_non_nullable
              as List<University>,
      universitysOrFailureOption: null == universitysOrFailureOption
          ? _value.universitysOrFailureOption
          : universitysOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<University>>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityStateCopyWith<$Res>
    implements $UniversityStateCopyWith<$Res> {
  factory _$$_UniversityStateCopyWith(
          _$_UniversityState value, $Res Function(_$_UniversityState) then) =
      __$$_UniversityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<University> universitys,
      List<University> universitysSearched,
      Option<Either<Failure, List<University>>> universitysOrFailureOption,
      Status status});
}

/// @nodoc
class __$$_UniversityStateCopyWithImpl<$Res>
    extends _$UniversityStateCopyWithImpl<$Res, _$_UniversityState>
    implements _$$_UniversityStateCopyWith<$Res> {
  __$$_UniversityStateCopyWithImpl(
      _$_UniversityState _value, $Res Function(_$_UniversityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universitys = null,
    Object? universitysSearched = null,
    Object? universitysOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_$_UniversityState(
      universitys: null == universitys
          ? _value._universitys
          : universitys // ignore: cast_nullable_to_non_nullable
              as List<University>,
      universitysSearched: null == universitysSearched
          ? _value._universitysSearched
          : universitysSearched // ignore: cast_nullable_to_non_nullable
              as List<University>,
      universitysOrFailureOption: null == universitysOrFailureOption
          ? _value.universitysOrFailureOption
          : universitysOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<University>>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_UniversityState implements _UniversityState {
  const _$_UniversityState(
      {required final List<University> universitys,
      required final List<University> universitysSearched,
      required this.universitysOrFailureOption,
      required this.status})
      : _universitys = universitys,
        _universitysSearched = universitysSearched;

  final List<University> _universitys;
  @override
  List<University> get universitys {
    if (_universitys is EqualUnmodifiableListView) return _universitys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_universitys);
  }

  final List<University> _universitysSearched;
  @override
  List<University> get universitysSearched {
    if (_universitysSearched is EqualUnmodifiableListView)
      return _universitysSearched;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_universitysSearched);
  }

  @override
  final Option<Either<Failure, List<University>>> universitysOrFailureOption;
  @override
  final Status status;

  @override
  String toString() {
    return 'UniversityState(universitys: $universitys, universitysSearched: $universitysSearched, universitysOrFailureOption: $universitysOrFailureOption, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityState &&
            const DeepCollectionEquality()
                .equals(other._universitys, _universitys) &&
            const DeepCollectionEquality()
                .equals(other._universitysSearched, _universitysSearched) &&
            (identical(other.universitysOrFailureOption,
                    universitysOrFailureOption) ||
                other.universitysOrFailureOption ==
                    universitysOrFailureOption) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_universitys),
      const DeepCollectionEquality().hash(_universitysSearched),
      universitysOrFailureOption,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityStateCopyWith<_$_UniversityState> get copyWith =>
      __$$_UniversityStateCopyWithImpl<_$_UniversityState>(this, _$identity);
}

abstract class _UniversityState implements UniversityState {
  const factory _UniversityState(
      {required final List<University> universitys,
      required final List<University> universitysSearched,
      required final Option<Either<Failure, List<University>>>
          universitysOrFailureOption,
      required final Status status}) = _$_UniversityState;

  @override
  List<University> get universitys;
  @override
  List<University> get universitysSearched;
  @override
  Option<Either<Failure, List<University>>> get universitysOrFailureOption;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityStateCopyWith<_$_UniversityState> get copyWith =>
      throw _privateConstructorUsedError;
}

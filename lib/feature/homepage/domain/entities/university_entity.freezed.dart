// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$University {
  List<String> get domains => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get alphaTwoCode => throw _privateConstructorUsedError;
  String? get stateProvince => throw _privateConstructorUsedError;
  List<String> get webPages => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res, University>;
  @useResult
  $Res call(
      {List<String> domains,
      String country,
      String alphaTwoCode,
      String? stateProvince,
      List<String> webPages,
      String name});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res, $Val extends University>
    implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domains = null,
    Object? country = null,
    Object? alphaTwoCode = null,
    Object? stateProvince = freezed,
    Object? webPages = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      domains: null == domains
          ? _value.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      alphaTwoCode: null == alphaTwoCode
          ? _value.alphaTwoCode
          : alphaTwoCode // ignore: cast_nullable_to_non_nullable
              as String,
      stateProvince: freezed == stateProvince
          ? _value.stateProvince
          : stateProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      webPages: null == webPages
          ? _value.webPages
          : webPages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityCopyWith<$Res>
    implements $UniversityCopyWith<$Res> {
  factory _$$_UniversityCopyWith(
          _$_University value, $Res Function(_$_University) then) =
      __$$_UniversityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> domains,
      String country,
      String alphaTwoCode,
      String? stateProvince,
      List<String> webPages,
      String name});
}

/// @nodoc
class __$$_UniversityCopyWithImpl<$Res>
    extends _$UniversityCopyWithImpl<$Res, _$_University>
    implements _$$_UniversityCopyWith<$Res> {
  __$$_UniversityCopyWithImpl(
      _$_University _value, $Res Function(_$_University) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domains = null,
    Object? country = null,
    Object? alphaTwoCode = null,
    Object? stateProvince = freezed,
    Object? webPages = null,
    Object? name = null,
  }) {
    return _then(_$_University(
      domains: null == domains
          ? _value._domains
          : domains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      alphaTwoCode: null == alphaTwoCode
          ? _value.alphaTwoCode
          : alphaTwoCode // ignore: cast_nullable_to_non_nullable
              as String,
      stateProvince: freezed == stateProvince
          ? _value.stateProvince
          : stateProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      webPages: null == webPages
          ? _value._webPages
          : webPages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_University implements _University {
  const _$_University(
      {required final List<String> domains,
      required this.country,
      required this.alphaTwoCode,
      required this.stateProvince,
      required final List<String> webPages,
      required this.name})
      : _domains = domains,
        _webPages = webPages;

  final List<String> _domains;
  @override
  List<String> get domains {
    if (_domains is EqualUnmodifiableListView) return _domains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_domains);
  }

  @override
  final String country;
  @override
  final String alphaTwoCode;
  @override
  final String? stateProvince;
  final List<String> _webPages;
  @override
  List<String> get webPages {
    if (_webPages is EqualUnmodifiableListView) return _webPages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webPages);
  }

  @override
  final String name;

  @override
  String toString() {
    return 'University(domains: $domains, country: $country, alphaTwoCode: $alphaTwoCode, stateProvince: $stateProvince, webPages: $webPages, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_University &&
            const DeepCollectionEquality().equals(other._domains, _domains) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.alphaTwoCode, alphaTwoCode) ||
                other.alphaTwoCode == alphaTwoCode) &&
            (identical(other.stateProvince, stateProvince) ||
                other.stateProvince == stateProvince) &&
            const DeepCollectionEquality().equals(other._webPages, _webPages) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_domains),
      country,
      alphaTwoCode,
      stateProvince,
      const DeepCollectionEquality().hash(_webPages),
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      __$$_UniversityCopyWithImpl<_$_University>(this, _$identity);
}

abstract class _University implements University {
  const factory _University(
      {required final List<String> domains,
      required final String country,
      required final String alphaTwoCode,
      required final String? stateProvince,
      required final List<String> webPages,
      required final String name}) = _$_University;

  @override
  List<String> get domains;
  @override
  String get country;
  @override
  String get alphaTwoCode;
  @override
  String? get stateProvince;
  @override
  List<String> get webPages;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityModel _$UniversityModelFromJson(Map<String, dynamic> json) {
  return _UniversityModel.fromJson(json);
}

/// @nodoc
mixin _$UniversityModel {
  @JsonKey(name: 'domains')
  List<String> get domains => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'alpha_two_code')
  String get alphaTwoCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'state-province')
  String? get stateProvince => throw _privateConstructorUsedError;
  @JsonKey(name: 'web_pages')
  List<String> get webPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityModelCopyWith<UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityModelCopyWith<$Res> {
  factory $UniversityModelCopyWith(
          UniversityModel value, $Res Function(UniversityModel) then) =
      _$UniversityModelCopyWithImpl<$Res, UniversityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'domains') List<String> domains,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'alpha_two_code') String alphaTwoCode,
      @JsonKey(name: 'state-province') String? stateProvince,
      @JsonKey(name: 'web_pages') List<String> webPages,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$UniversityModelCopyWithImpl<$Res, $Val extends UniversityModel>
    implements $UniversityModelCopyWith<$Res> {
  _$UniversityModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_UniversityModelCopyWith<$Res>
    implements $UniversityModelCopyWith<$Res> {
  factory _$$_UniversityModelCopyWith(
          _$_UniversityModel value, $Res Function(_$_UniversityModel) then) =
      __$$_UniversityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'domains') List<String> domains,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'alpha_two_code') String alphaTwoCode,
      @JsonKey(name: 'state-province') String? stateProvince,
      @JsonKey(name: 'web_pages') List<String> webPages,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_UniversityModelCopyWithImpl<$Res>
    extends _$UniversityModelCopyWithImpl<$Res, _$_UniversityModel>
    implements _$$_UniversityModelCopyWith<$Res> {
  __$$_UniversityModelCopyWithImpl(
      _$_UniversityModel _value, $Res Function(_$_UniversityModel) _then)
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
    return _then(_$_UniversityModel(
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
@JsonSerializable()
class _$_UniversityModel implements _UniversityModel {
  const _$_UniversityModel(
      {@JsonKey(name: 'domains') required final List<String> domains,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'alpha_two_code') required this.alphaTwoCode,
      @JsonKey(name: 'state-province') this.stateProvince,
      @JsonKey(name: 'web_pages') required final List<String> webPages,
      @JsonKey(name: 'name') required this.name})
      : _domains = domains,
        _webPages = webPages;

  factory _$_UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityModelFromJson(json);

  final List<String> _domains;
  @override
  @JsonKey(name: 'domains')
  List<String> get domains {
    if (_domains is EqualUnmodifiableListView) return _domains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_domains);
  }

  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'alpha_two_code')
  final String alphaTwoCode;
  @override
  @JsonKey(name: 'state-province')
  final String? stateProvince;
  final List<String> _webPages;
  @override
  @JsonKey(name: 'web_pages')
  List<String> get webPages {
    if (_webPages is EqualUnmodifiableListView) return _webPages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webPages);
  }

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'UniversityModel(domains: $domains, country: $country, alphaTwoCode: $alphaTwoCode, stateProvince: $stateProvince, webPages: $webPages, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityModel &&
            const DeepCollectionEquality().equals(other._domains, _domains) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.alphaTwoCode, alphaTwoCode) ||
                other.alphaTwoCode == alphaTwoCode) &&
            (identical(other.stateProvince, stateProvince) ||
                other.stateProvince == stateProvince) &&
            const DeepCollectionEquality().equals(other._webPages, _webPages) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
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
  _$$_UniversityModelCopyWith<_$_UniversityModel> get copyWith =>
      __$$_UniversityModelCopyWithImpl<_$_UniversityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityModelToJson(
      this,
    );
  }
}

abstract class _UniversityModel implements UniversityModel {
  const factory _UniversityModel(
      {@JsonKey(name: 'domains') required final List<String> domains,
      @JsonKey(name: 'country') required final String country,
      @JsonKey(name: 'alpha_two_code') required final String alphaTwoCode,
      @JsonKey(name: 'state-province') final String? stateProvince,
      @JsonKey(name: 'web_pages') required final List<String> webPages,
      @JsonKey(name: 'name') required final String name}) = _$_UniversityModel;

  factory _UniversityModel.fromJson(Map<String, dynamic> json) =
      _$_UniversityModel.fromJson;

  @override
  @JsonKey(name: 'domains')
  List<String> get domains;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'alpha_two_code')
  String get alphaTwoCode;
  @override
  @JsonKey(name: 'state-province')
  String? get stateProvince;
  @override
  @JsonKey(name: 'web_pages')
  List<String> get webPages;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityModelCopyWith<_$_UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

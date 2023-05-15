// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityModel _$$_UniversityModelFromJson(Map<String, dynamic> json) =>
    _$_UniversityModel(
      domains:
          (json['domains'] as List<dynamic>).map((e) => e as String).toList(),
      country: json['country'] as String,
      alphaTwoCode: json['alpha_two_code'] as String,
      stateProvince: json['state-province'] as String?,
      webPages:
          (json['web_pages'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_UniversityModelToJson(_$_UniversityModel instance) =>
    <String, dynamic>{
      'domains': instance.domains,
      'country': instance.country,
      'alpha_two_code': instance.alphaTwoCode,
      'state-province': instance.stateProvince,
      'web_pages': instance.webPages,
      'name': instance.name,
    };

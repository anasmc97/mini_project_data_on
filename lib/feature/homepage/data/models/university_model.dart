import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_project_data_on/feature/homepage/domain/entities/university_entity.dart';

part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
class UniversityModel with _$UniversityModel {
  const factory UniversityModel({
    @JsonKey(name: 'domains') required List<String> domains,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'alpha_two_code') required String alphaTwoCode,
    @JsonKey(name: 'state-province') String? stateProvince,
    @JsonKey(name: 'web_pages') required List<String> webPages,
    @JsonKey(name: 'name') required String name,
  }) = _UniversityModel;

  factory UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$UniversityModelFromJson(json);

  factory UniversityModel.fromDomain(University form) => UniversityModel(
      domains: form.domains,
      country: form.country,
      alphaTwoCode: form.alphaTwoCode,
      stateProvince: form.stateProvince,
      webPages: form.webPages,
      name: form.name);
}

extension UniversityModelX on UniversityModel {
  University toDomain() => University(
      domains: domains,
      country: country,
      alphaTwoCode: alphaTwoCode,
      stateProvince: stateProvince,
      webPages: webPages,
      name: name);
}

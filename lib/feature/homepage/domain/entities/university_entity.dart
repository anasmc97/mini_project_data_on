import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_entity.freezed.dart';

@freezed
class University with _$University {
  const factory University({
    required List<String> domains,
    required String country,
    required String alphaTwoCode,
    required String? stateProvince,
    required List<String> webPages,
    required String name,
  }) = _University;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_event.freezed.dart';

@freezed
class UniversityEvent with _$UniversityEvent {
  const factory UniversityEvent.loadUniversitys() = LoadUniversitys;
  const factory UniversityEvent.loadUniversitysSearched(
      {required String keyword}) = LoadUniversitysSearched;
}

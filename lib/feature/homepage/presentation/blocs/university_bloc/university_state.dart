import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_project_data_on/core/domain/failures/failure.codegen.dart';
import 'package:mini_project_data_on/feature/homepage/domain/entities/university_entity.dart';

part 'university_state.freezed.dart';

enum Status { initial, loading, success, error }

@freezed
abstract class UniversityState implements _$UniversityState {
  const factory UniversityState({
    required List<University> universitys,
    required List<University> universitysSearched,
    required Option<Either<Failure, List<University>>>
        universitysOrFailureOption,
    required Status status,
  }) = _UniversityState;

  factory UniversityState.initial() {
    return UniversityState(
      universitys: [],
      universitysSearched: [],
      status: Status.loading,
      universitysOrFailureOption: none(),
    );
  }
}

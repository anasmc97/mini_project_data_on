import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project_data_on/core/domain/failures/failure.codegen.dart';
import 'package:mini_project_data_on/core/domain/usecases/use_case.dart';
import 'package:mini_project_data_on/feature/homepage/domain/entities/university_entity.dart';
import 'package:mini_project_data_on/feature/homepage/domain/repositories/university_repository.dart';

@lazySingleton
class LoadUniversityUsecase implements UseCase<List<University>, NoParams> {
  final UniversityRepository repository;

  LoadUniversityUsecase(this.repository);

  @override
  Future<Either<Failure, List<University>>> call(NoParams params) async {
    try {
      final response = await repository.loadUniversity();
      return right(response);
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(
          const Failure.serverFailure(message: 'Cant get data from db'));
    }
  }
}

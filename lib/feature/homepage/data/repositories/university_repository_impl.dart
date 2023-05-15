import 'package:injectable/injectable.dart';
import 'package:mini_project_data_on/feature/homepage/data/datasources/remote/university_remote_data_source.dart';
import 'package:mini_project_data_on/feature/homepage/data/models/university_model.dart';
import 'package:mini_project_data_on/feature/homepage/domain/entities/university_entity.dart';
import 'package:mini_project_data_on/feature/homepage/domain/repositories/university_repository.dart';

@LazySingleton(as: UniversityRepository)
class UniversityRepositoryImpl implements UniversityRepository {
  final UniversityRemoteDataSource remoteDataSource;
  UniversityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<University>> loadUniversity() {
    return remoteDataSource
        .loadUniversity()
        .then((value) => value.map((e) => e.toDomain()).toList());
  }
}

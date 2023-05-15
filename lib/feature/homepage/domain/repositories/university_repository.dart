import 'package:mini_project_data_on/feature/homepage/domain/entities/university_entity.dart';

abstract class UniversityRepository {
  Future<List<University>> loadUniversity();
}

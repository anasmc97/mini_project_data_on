import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project_data_on/core/utils/constants.dart';
import 'package:mini_project_data_on/feature/homepage/data/models/university_model.dart';

abstract class UniversityRemoteDataSource {
  Future<List<UniversityModel>> loadUniversity();
}

@LazySingleton(as: UniversityRemoteDataSource)
class UniversityRemoteDataSourceImpl implements UniversityRemoteDataSource {
  @override
  Future<List<UniversityModel>> loadUniversity() async {
    const api = '${ConstantUrl.url}search?country=Indonesia';
    final dio = Dio();
    Response response;
    try {
      response = await dio.get(api);
      if (response.statusCode == 200) {
        final body = response.data;
        List<UniversityModel> listUniversityModel =
            (body as Iterable).map((e) => UniversityModel.fromJson(e)).toList();
        return listUniversityModel;
      } else {
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}

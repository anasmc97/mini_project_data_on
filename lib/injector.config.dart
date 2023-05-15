// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mini_project_data_on/core/di/storage_module.dart' as _i12;
import 'package:mini_project_data_on/core/storages/local_storages.dart' as _i10;
import 'package:mini_project_data_on/feature/homepage/data/datasources/remote/university_remote_data_source.dart'
    as _i6;
import 'package:mini_project_data_on/feature/homepage/data/repositories/university_repository_impl.dart'
    as _i8;
import 'package:mini_project_data_on/feature/homepage/domain/repositories/university_repository.dart'
    as _i7;
import 'package:mini_project_data_on/feature/homepage/domain/usecases/load_university_usecase.dart'
    as _i9;
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_bloc.dart'
    as _i11;
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i3;
import 'package:mini_project_data_on/shared/flash/presentation/blocs/cubit/flash_cubit.dart'
    as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final storageModule = _$StorageModule();
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
    gh.factory<_i4.FlashCubit>(() => _i4.FlashCubit());
    await gh.lazySingletonAsync<_i5.SharedPreferences>(
      () => storageModule.sharedPreference,
      preResolve: true,
    );
    gh.lazySingleton<_i6.UniversityRemoteDataSource>(
        () => _i6.UniversityRemoteDataSourceImpl());
    gh.lazySingleton<_i7.UniversityRepository>(() =>
        _i8.UniversityRepositoryImpl(
            remoteDataSource: gh<_i6.UniversityRemoteDataSource>()));
    gh.lazySingleton<_i9.LoadUniversityUsecase>(
        () => _i9.LoadUniversityUsecase(gh<_i7.UniversityRepository>()));
    gh.lazySingleton<_i10.LocalStorage>(
        () => _i10.LocalStorageImpl(gh<_i5.SharedPreferences>()));
    gh.factory<_i11.UniversityBloc>(
        () => _i11.UniversityBloc(gh<_i9.LoadUniversityUsecase>()));
    return this;
  }
}

class _$StorageModule extends _i12.StorageModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bloc_exam/config/network/dio_client.dart' as _i6;
import 'package:bloc_exam/data/api/objects/object_api.dart' as _i5;
import 'package:bloc_exam/data/repositoty/object_repository.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioClient = _$DioClient();
    gh.factory<_i3.ObjectRepository>(() => _i3.ObjectRepository());
    gh.lazySingleton<_i4.Dio>(() => dioClient.dio());
    gh.lazySingleton<_i5.ObjectApi>(() => _i5.ObjectApi(gh<_i4.Dio>()));
    return this;
  }
}

class _$DioClient extends _i6.DioClient {}

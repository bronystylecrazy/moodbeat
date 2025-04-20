// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:moodbeat/config.dart' as _i769;
import 'package:moodbeat/core/services/api_provider.dart' as _i690;
import 'package:moodbeat/core/services/dio_provider.dart' as _i161;
import 'package:moodbeat_core/moodbeat_core.dart' as _i880;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioProvider = _$DioProvider();
    final apiProvider = _$ApiProvider();
    gh.lazySingleton<_i769.IConfig>(() => _i769.AppConfig());
    await gh.singletonAsync<_i361.Dio>(
      () => dioProvider.dio(gh<_i769.IConfig>()),
      preResolve: true,
    );
    gh.singleton<_i880.AuthApi>(() => apiProvider.authApi(
          gh<_i361.Dio>(),
          gh<_i769.IConfig>(),
        ));
    return this;
  }
}

class _$DioProvider extends _i161.DioProvider {}

class _$ApiProvider extends _i690.ApiProvider {}

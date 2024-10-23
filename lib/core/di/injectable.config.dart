// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_base/data/datasource/local/preferences_datasource.dart'
    as _i188;
import 'package:flutter_base/data/datasource/remote/auth_datasource.dart'
    as _i58;
import 'package:flutter_base/data/repository/auth_repository_impl.dart'
    as _i982;
import 'package:flutter_base/domain/repository/auth_repository.dart' as _i716;
import 'package:flutter_base/domain/usecase/auth_actions.dart' as _i386;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i188.PreferencesDataSource>(
        () => _i188.PreferencesDataSource());
    gh.singleton<_i58.AuthDatasource>(
        () => _i58.AuthDatasource(gh<_i188.PreferencesDataSource>()));
    gh.singleton<_i716.AuthRepository>(() => _i982.AuthRepositoryImpl(
          gh<_i188.PreferencesDataSource>(),
          gh<_i58.AuthDatasource>(),
        ));
    gh.singleton<_i386.AuthActions>(
        () => _i386.AuthActions(gh<_i716.AuthRepository>()));
    return this;
  }
}

import 'package:flutter_base/core/utils.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/auth_repository.dart';
import '../datasource/local/preferences_datasource.dart';
import '../dto/response/user/user_details_dto.dart';
import '../datasource/remote/auth_datasource.dart';
import '../dto/request/login/login_dto.dart';
import '../core/data_response.dart';
import '../core/utils.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.preferencesDS, this.authDS);

  final PreferencesDataSource preferencesDS;
  final AuthDatasource authDS;

  @override
  Stream<bool> get loginStatus =>
      preferencesDS.userDetails.map((userDetails) => userDetails != null);

  @override
  Stream<UserDetailsDto?> get userDetails => preferencesDS.userDetails;

  @override
  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest) =>
      authDS.login(loginRequest).also(
        (userDetails) {
          userDetails?.let((it) => preferencesDS.setUserDetails(it));
        },
      );

  @override
  Stream<DataResponse<dynamic>> logout() => authDS.logout().also(
        (data) => preferencesDS.clearPreferences(),
      );
}

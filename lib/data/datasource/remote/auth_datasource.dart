import 'package:flutter_base/core/env.dart';
import 'package:injectable/injectable.dart';

import '../../dto/response/user/user_details_dto.dart';
import '../../dto/request/login/login_dto.dart';
import '../../core/network_manager.dart';
import '../../core/data_response.dart';
import '../../config/endpoints.dart';
import '../local/preferences_datasource.dart';

@singleton
class AuthDatasource extends NetworkManager {
  AuthDatasource(PreferencesDataSource preferences)
      : super(
          baseUrl: AppEnv.baseUrl,
          token: preferences.userDetailStream.map((data) => data?.token),
          onUnAuthorized: preferences.clearPreferences,
        );

  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest) => get(
        Endpoints.login,
      ).mapResponse(fromJsonObject: UserDetailsDto.fromJson);

  Stream<DataResponse<dynamic>> logout() => get(Endpoints.logout);
}

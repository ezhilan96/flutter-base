import 'package:injectable/injectable.dart';

import '../../../core/constants.dart';
import '../../dto/response/user/user_details_dto.dart';
import '../../dto/request/login/login_dto.dart';
import '../../core/network_datasource.dart';
import '../../core/data_response.dart';
import '../../config/endpoints.dart';
import '../local/preferences_datasource.dart';

@singleton
class AuthDatasource extends NetworkManager {
  AuthDatasource(PreferencesDataSource preferences)
      : super(
          baseUrl: StringRes.baseUrl,
          token: preferences.userDetails.map((data) => data?.token),
          onUnAuthorized: preferences.clearPreferences,
        );

  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest) =>
      executeNetworkCall(
        () => networkClient.get(Endpoints.login),
        UserDetailsDto.fromJson,
      );

  Stream<DataResponse<dynamic>> logout() => executeNetworkCall(
        () => networkClient.get(Endpoints.logout),
        (data) {},
      );
}

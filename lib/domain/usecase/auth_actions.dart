import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../data/dto/response/user/user_details_dto.dart';
import '../../data/dto/request/login/login_dto.dart';
import '../../data/core/data_response.dart';
import '../entity/app_state.dart';
import '../repository/auth_repository.dart';

@singleton
class AuthActions {
  final AuthRepository _authRepo;
  AuthActions(this._authRepo) {
    _authRepo.loginStatus.listen(_handleLoginStatus);
  }

  Future<void> _handleLoginStatus(bool isLoggedIn) async {
    if (isLoggedIn) {
      // get app config/apiKey
      const apiKey = 'api_key_here';
      _appStateController.add(const Authorized(apiKey));
    } else {
      _appStateController.add(UnAuthorized());
    }
  }

  final StreamController<AppState> _appStateController =
      StreamController<AppState>.broadcast();

  Stream<AppState> get appState => _appStateController.stream;

  Stream<bool> get loginStatus => _authRepo.loginStatus;

  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest) =>
      _authRepo.login(loginRequest);

  Stream<DataResponse<dynamic>> logout() => _authRepo.logout();
}

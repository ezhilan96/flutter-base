import 'package:injectable/injectable.dart';

import '../../data/dto/response/user/user_details_dto.dart';
import '../../data/dto/request/login/login_dto.dart';
import '../../data/core/data_response.dart';
import '../repository/auth_repository.dart';

@singleton
class AuthActions {
  final AuthRepository _authRepo;
  AuthActions(this._authRepo);

  Stream<bool> get loginStatus => _authRepo.loginStatus;

  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest) =>
      _authRepo.login(loginRequest);

  Stream<DataResponse<dynamic>> logout() => _authRepo.logout();
}

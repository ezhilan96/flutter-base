import 'package:injectable/injectable.dart';

import '../../domain/repository/auth_repository.dart';
import '../dto/response/user/user_details_dto.dart';
import '../dto/request/login/login_dto.dart';
import '../core/data_response.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  // TODO: implement loginStatus
  Stream<bool> get loginStatus => throw UnimplementedError();

  @override
  // TODO: implement userDetails
  Stream<UserDetailsDto?> get userDetails => throw UnimplementedError();

  @override
  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<DataResponse> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

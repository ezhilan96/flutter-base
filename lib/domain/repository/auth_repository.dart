import '../../data/dto/response/user/user_details_dto.dart';
import '../../data/dto/request/login/login_dto.dart';
import '../../data/core/data_response.dart';

abstract class AuthRepository {
  Stream<bool> get loginStatus;
  Stream<UserDetailsDto?> get userDetails;
  Stream<DataResponse<UserDetailsDto?>> login(LoginDto loginRequest);
  Future<DataResponse<dynamic>> logout();
}

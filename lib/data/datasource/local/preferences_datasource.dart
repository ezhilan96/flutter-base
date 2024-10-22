import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../core/constants.dart';
import '../../dto/response/user/user_details_dto.dart';
import '../../core/streamed_shared_preferences.dart';

@singleton
class PreferencesDataSource extends StreamedSharedPreferences {
  Stream<UserDetailsDto?> get userDetails =>
      (observe(KeyRes.userDetails, (json) => UserDetailsDto.fromJson(json))
          as Stream<UserDetailsDto?>);

  Future<void> setUserDetails(UserDetailsDto dto) =>
      set(KeyRes.userDetails, dto.toJson());
}

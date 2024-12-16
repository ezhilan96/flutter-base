import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../core/constants.dart';
import '../../core/preferences_stream_handler.dart';
import '../../dto/response/user/user_details_dto.dart';

@singleton
class PreferencesDataSource extends PreferencesStreamHandler {
  Stream<UserDetailsDto?> get userDetailStream =>
      getPreferenceStream(KeyRes.userDetails).map((data) =>
          data == null ? null : UserDetailsDto.fromJson(jsonDecode(data)));

  Future<void> setUserDetails(UserDetailsDto dto) =>
      setPreference(key: KeyRes.userDetails, data: jsonEncode(dto.toJson()));
}

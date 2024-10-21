import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_dto.freezed.dart';
part 'user_details_dto.g.dart';

@freezed
class UserDetailsDto with _$UserDetailsDto {
  const factory UserDetailsDto({
    int? id,
    String? name,
    int? phone,
    String? email,
    String? token,
  }) = _UserDetailsDto;

  factory UserDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDtoFromJson(json);
}

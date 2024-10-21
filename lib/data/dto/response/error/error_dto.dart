import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_dto.freezed.dart';
part 'error_dto.g.dart';

@freezed
class ErrorDto with _$ErrorDto {
  const factory ErrorDto({
    required ErrorBody error,
  }) = _ErrorDto;

  factory ErrorDto.fromJson(Map<String, dynamic> json) =>
      _$ErrorDtoFromJson(json);
}

@freezed
class ErrorBody with _$ErrorBody {
  const factory ErrorBody({
    required int statusCode,
    required String name,
    required String message,
  }) = _ErrorBody;

  factory ErrorBody.fromJson(Map<String, dynamic> json) => _$ErrorBodyFromJson(json);
}

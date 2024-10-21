// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorDtoImpl _$$ErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDtoImpl(
      error: ErrorBody.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorDtoImplToJson(_$ErrorDtoImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ErrorBodyImpl _$$ErrorBodyImplFromJson(Map<String, dynamic> json) =>
    _$ErrorBodyImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      name: json['name'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorBodyImplToJson(_$ErrorBodyImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'name': instance.name,
      'message': instance.message,
    };

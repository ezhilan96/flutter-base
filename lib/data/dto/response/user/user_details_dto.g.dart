// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsDtoImpl _$$UserDetailsDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: (json['phone'] as num?)?.toInt(),
      email: json['email'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserDetailsDtoImplToJson(
        _$UserDetailsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'token': instance.token,
    };

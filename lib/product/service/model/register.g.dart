// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Register _$RegisterFromJson(Map<String, dynamic> json) => Register(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$RegisterToJson(Register instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
    };

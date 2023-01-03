// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEntity _$$_ProfileEntityFromJson(Map<String, dynamic> json) =>
    _$_ProfileEntity(
      nameDepan: json['nameDepan'] as String?,
      nameBelakang: json['nameBelakang'] as String?,
      email: json['email'] as String?,
      jenisKelamin: json['jenisKelamin'] as String?,
      password: json['password'] as String?,
      fotoProfil: json['fotoProfil'] as String?,
    );

Map<String, dynamic> _$$_ProfileEntityToJson(_$_ProfileEntity instance) =>
    <String, dynamic>{
      'nameDepan': instance.nameDepan,
      'nameBelakang': instance.nameBelakang,
      'email': instance.email,
      'jenisKelamin': instance.jenisKelamin,
      'password': instance.password,
      'fotoProfil': instance.fotoProfil,
    };

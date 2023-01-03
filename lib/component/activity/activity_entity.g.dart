// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityEntity _$$_ActivityEntityFromJson(Map<String, dynamic> json) =>
    _$_ActivityEntity(
      id: json['id'] as int?,
      judul: json['judul'] as String?,
      deskripsi: json['deskripsi'] as String?,
      waktu: json['waktu'] as String?,
    );

Map<String, dynamic> _$$_ActivityEntityToJson(_$_ActivityEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'deskripsi': instance.deskripsi,
      'waktu': instance.waktu,
    };

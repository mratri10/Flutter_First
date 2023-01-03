import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    String? nameDepan,
    String? nameBelakang,
    String? email,
    String? jenisKelamin,
    String? password,
    String? fotoProfil,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
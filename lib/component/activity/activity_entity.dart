import 'package:freezed_annotation/freezed_annotation.dart';
part 'activity_entity.freezed.dart';
part 'activity_entity.g.dart';

@freezed
class ActivityEntity with _$ActivityEntity {
  const factory ActivityEntity({
    int? id,
    String? judul,
    String? deskripsi,
    String? waktu,
  }) = _ActivityEntity;

  factory ActivityEntity.fromJson(Map<String, dynamic> json)=> 
    _$ActivityEntityFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityEntity _$ActivityEntityFromJson(Map<String, dynamic> json) {
  return _ActivityEntity.fromJson(json);
}

/// @nodoc
mixin _$ActivityEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get judul => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get waktu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityEntityCopyWith<ActivityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEntityCopyWith<$Res> {
  factory $ActivityEntityCopyWith(
          ActivityEntity value, $Res Function(ActivityEntity) then) =
      _$ActivityEntityCopyWithImpl<$Res>;
  $Res call({int? id, String? judul, String? deskripsi, String? waktu});
}

/// @nodoc
class _$ActivityEntityCopyWithImpl<$Res>
    implements $ActivityEntityCopyWith<$Res> {
  _$ActivityEntityCopyWithImpl(this._value, this._then);

  final ActivityEntity _value;
  // ignore: unused_field
  final $Res Function(ActivityEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? judul = freezed,
    Object? deskripsi = freezed,
    Object? waktu = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      judul: judul == freezed
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      waktu: waktu == freezed
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ActivityEntityCopyWith<$Res>
    implements $ActivityEntityCopyWith<$Res> {
  factory _$$_ActivityEntityCopyWith(
          _$_ActivityEntity value, $Res Function(_$_ActivityEntity) then) =
      __$$_ActivityEntityCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? judul, String? deskripsi, String? waktu});
}

/// @nodoc
class __$$_ActivityEntityCopyWithImpl<$Res>
    extends _$ActivityEntityCopyWithImpl<$Res>
    implements _$$_ActivityEntityCopyWith<$Res> {
  __$$_ActivityEntityCopyWithImpl(
      _$_ActivityEntity _value, $Res Function(_$_ActivityEntity) _then)
      : super(_value, (v) => _then(v as _$_ActivityEntity));

  @override
  _$_ActivityEntity get _value => super._value as _$_ActivityEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? judul = freezed,
    Object? deskripsi = freezed,
    Object? waktu = freezed,
  }) {
    return _then(_$_ActivityEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      judul: judul == freezed
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      waktu: waktu == freezed
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityEntity implements _ActivityEntity {
  const _$_ActivityEntity({this.id, this.judul, this.deskripsi, this.waktu});

  factory _$_ActivityEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? judul;
  @override
  final String? deskripsi;
  @override
  final String? waktu;

  @override
  String toString() {
    return 'ActivityEntity(id: $id, judul: $judul, deskripsi: $deskripsi, waktu: $waktu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.judul, judul) &&
            const DeepCollectionEquality().equals(other.deskripsi, deskripsi) &&
            const DeepCollectionEquality().equals(other.waktu, waktu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(judul),
      const DeepCollectionEquality().hash(deskripsi),
      const DeepCollectionEquality().hash(waktu));

  @JsonKey(ignore: true)
  @override
  _$$_ActivityEntityCopyWith<_$_ActivityEntity> get copyWith =>
      __$$_ActivityEntityCopyWithImpl<_$_ActivityEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityEntityToJson(
      this,
    );
  }
}

abstract class _ActivityEntity implements ActivityEntity {
  const factory _ActivityEntity(
      {final int? id,
      final String? judul,
      final String? deskripsi,
      final String? waktu}) = _$_ActivityEntity;

  factory _ActivityEntity.fromJson(Map<String, dynamic> json) =
      _$_ActivityEntity.fromJson;

  @override
  int? get id;
  @override
  String? get judul;
  @override
  String? get deskripsi;
  @override
  String? get waktu;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityEntityCopyWith<_$_ActivityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) {
  return _ProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileEntity {
  String? get nameDepan => throw _privateConstructorUsedError;
  String? get nameBelakang => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get jenisKelamin => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get fotoProfil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res>;
  $Res call(
      {String? nameDepan,
      String? nameBelakang,
      String? email,
      String? jenisKelamin,
      String? password,
      String? fotoProfil});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  final ProfileEntity _value;
  // ignore: unused_field
  final $Res Function(ProfileEntity) _then;

  @override
  $Res call({
    Object? nameDepan = freezed,
    Object? nameBelakang = freezed,
    Object? email = freezed,
    Object? jenisKelamin = freezed,
    Object? password = freezed,
    Object? fotoProfil = freezed,
  }) {
    return _then(_value.copyWith(
      nameDepan: nameDepan == freezed
          ? _value.nameDepan
          : nameDepan // ignore: cast_nullable_to_non_nullable
              as String?,
      nameBelakang: nameBelakang == freezed
          ? _value.nameBelakang
          : nameBelakang // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKelamin: jenisKelamin == freezed
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fotoProfil: fotoProfil == freezed
          ? _value.fotoProfil
          : fotoProfil // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$_ProfileEntityCopyWith(
          _$_ProfileEntity value, $Res Function(_$_ProfileEntity) then) =
      __$$_ProfileEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? nameDepan,
      String? nameBelakang,
      String? email,
      String? jenisKelamin,
      String? password,
      String? fotoProfil});
}

/// @nodoc
class __$$_ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res>
    implements _$$_ProfileEntityCopyWith<$Res> {
  __$$_ProfileEntityCopyWithImpl(
      _$_ProfileEntity _value, $Res Function(_$_ProfileEntity) _then)
      : super(_value, (v) => _then(v as _$_ProfileEntity));

  @override
  _$_ProfileEntity get _value => super._value as _$_ProfileEntity;

  @override
  $Res call({
    Object? nameDepan = freezed,
    Object? nameBelakang = freezed,
    Object? email = freezed,
    Object? jenisKelamin = freezed,
    Object? password = freezed,
    Object? fotoProfil = freezed,
  }) {
    return _then(_$_ProfileEntity(
      nameDepan: nameDepan == freezed
          ? _value.nameDepan
          : nameDepan // ignore: cast_nullable_to_non_nullable
              as String?,
      nameBelakang: nameBelakang == freezed
          ? _value.nameBelakang
          : nameBelakang // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKelamin: jenisKelamin == freezed
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fotoProfil: fotoProfil == freezed
          ? _value.fotoProfil
          : fotoProfil // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileEntity implements _ProfileEntity {
  const _$_ProfileEntity(
      {this.nameDepan,
      this.nameBelakang,
      this.email,
      this.jenisKelamin,
      this.password,
      this.fotoProfil});

  factory _$_ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileEntityFromJson(json);

  @override
  final String? nameDepan;
  @override
  final String? nameBelakang;
  @override
  final String? email;
  @override
  final String? jenisKelamin;
  @override
  final String? password;
  @override
  final String? fotoProfil;

  @override
  String toString() {
    return 'ProfileEntity(nameDepan: $nameDepan, nameBelakang: $nameBelakang, email: $email, jenisKelamin: $jenisKelamin, password: $password, fotoProfil: $fotoProfil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEntity &&
            const DeepCollectionEquality().equals(other.nameDepan, nameDepan) &&
            const DeepCollectionEquality()
                .equals(other.nameBelakang, nameBelakang) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.jenisKelamin, jenisKelamin) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.fotoProfil, fotoProfil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameDepan),
      const DeepCollectionEquality().hash(nameBelakang),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(jenisKelamin),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(fotoProfil));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      __$$_ProfileEntityCopyWithImpl<_$_ProfileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileEntityToJson(
      this,
    );
  }
}

abstract class _ProfileEntity implements ProfileEntity {
  const factory _ProfileEntity(
      {final String? nameDepan,
      final String? nameBelakang,
      final String? email,
      final String? jenisKelamin,
      final String? password,
      final String? fotoProfil}) = _$_ProfileEntity;

  factory _ProfileEntity.fromJson(Map<String, dynamic> json) =
      _$_ProfileEntity.fromJson;

  @override
  String? get nameDepan;
  @override
  String? get nameBelakang;
  @override
  String? get email;
  @override
  String? get jenisKelamin;
  @override
  String? get password;
  @override
  String? get fotoProfil;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

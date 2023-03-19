// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commentaire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Commentaire _$CommentaireFromJson(Map<String, dynamic> json) {
  return _Commentaire.fromJson(json);
}

/// @nodoc
mixin _$Commentaire {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plante_id')
  int? get planteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_utilisateur')
  String? get nameUtilisateur => throw _privateConstructorUsedError;
  @JsonKey(name: 'prenom_utilisateur')
  String? get prenomUtilisateur => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_utilisateur')
  String? get photoProfil => throw _privateConstructorUsedError;
  @JsonKey(name: 'titre_conseil')
  String? get titreConseil => throw _privateConstructorUsedError;
  @JsonKey(name: 'contenuConseil')
  String? get contenuConseil => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdat => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentaireCopyWith<Commentaire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentaireCopyWith<$Res> {
  factory $CommentaireCopyWith(
          Commentaire value, $Res Function(Commentaire) then) =
      _$CommentaireCopyWithImpl<$Res, Commentaire>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'plante_id') int? planteId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name_utilisateur') String? nameUtilisateur,
      @JsonKey(name: 'prenom_utilisateur') String? prenomUtilisateur,
      @JsonKey(name: 'image_utilisateur') String? photoProfil,
      @JsonKey(name: 'titre_conseil') String? titreConseil,
      @JsonKey(name: 'contenuConseil') String? contenuConseil,
      @JsonKey(name: 'created_at') DateTime? createdat,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CommentaireCopyWithImpl<$Res, $Val extends Commentaire>
    implements $CommentaireCopyWith<$Res> {
  _$CommentaireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planteId = freezed,
    Object? userId = freezed,
    Object? nameUtilisateur = freezed,
    Object? prenomUtilisateur = freezed,
    Object? photoProfil = freezed,
    Object? titreConseil = freezed,
    Object? contenuConseil = freezed,
    Object? createdat = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      planteId: freezed == planteId
          ? _value.planteId
          : planteId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUtilisateur: freezed == nameUtilisateur
          ? _value.nameUtilisateur
          : nameUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      prenomUtilisateur: freezed == prenomUtilisateur
          ? _value.prenomUtilisateur
          : prenomUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfil: freezed == photoProfil
          ? _value.photoProfil
          : photoProfil // ignore: cast_nullable_to_non_nullable
              as String?,
      titreConseil: freezed == titreConseil
          ? _value.titreConseil
          : titreConseil // ignore: cast_nullable_to_non_nullable
              as String?,
      contenuConseil: freezed == contenuConseil
          ? _value.contenuConseil
          : contenuConseil // ignore: cast_nullable_to_non_nullable
              as String?,
      createdat: freezed == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentaireCopyWith<$Res>
    implements $CommentaireCopyWith<$Res> {
  factory _$$_CommentaireCopyWith(
          _$_Commentaire value, $Res Function(_$_Commentaire) then) =
      __$$_CommentaireCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'plante_id') int? planteId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name_utilisateur') String? nameUtilisateur,
      @JsonKey(name: 'prenom_utilisateur') String? prenomUtilisateur,
      @JsonKey(name: 'image_utilisateur') String? photoProfil,
      @JsonKey(name: 'titre_conseil') String? titreConseil,
      @JsonKey(name: 'contenuConseil') String? contenuConseil,
      @JsonKey(name: 'created_at') DateTime? createdat,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_CommentaireCopyWithImpl<$Res>
    extends _$CommentaireCopyWithImpl<$Res, _$_Commentaire>
    implements _$$_CommentaireCopyWith<$Res> {
  __$$_CommentaireCopyWithImpl(
      _$_Commentaire _value, $Res Function(_$_Commentaire) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planteId = freezed,
    Object? userId = freezed,
    Object? nameUtilisateur = freezed,
    Object? prenomUtilisateur = freezed,
    Object? photoProfil = freezed,
    Object? titreConseil = freezed,
    Object? contenuConseil = freezed,
    Object? createdat = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Commentaire(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      planteId: freezed == planteId
          ? _value.planteId
          : planteId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUtilisateur: freezed == nameUtilisateur
          ? _value.nameUtilisateur
          : nameUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      prenomUtilisateur: freezed == prenomUtilisateur
          ? _value.prenomUtilisateur
          : prenomUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfil: freezed == photoProfil
          ? _value.photoProfil
          : photoProfil // ignore: cast_nullable_to_non_nullable
              as String?,
      titreConseil: freezed == titreConseil
          ? _value.titreConseil
          : titreConseil // ignore: cast_nullable_to_non_nullable
              as String?,
      contenuConseil: freezed == contenuConseil
          ? _value.contenuConseil
          : contenuConseil // ignore: cast_nullable_to_non_nullable
              as String?,
      createdat: freezed == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Commentaire implements _Commentaire {
  const _$_Commentaire(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'plante_id') this.planteId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'name_utilisateur') this.nameUtilisateur,
      @JsonKey(name: 'prenom_utilisateur') this.prenomUtilisateur,
      @JsonKey(name: 'image_utilisateur') this.photoProfil,
      @JsonKey(name: 'titre_conseil') this.titreConseil,
      @JsonKey(name: 'contenuConseil') this.contenuConseil,
      @JsonKey(name: 'created_at') this.createdat,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_Commentaire.fromJson(Map<String, dynamic> json) =>
      _$$_CommentaireFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'plante_id')
  final int? planteId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'name_utilisateur')
  final String? nameUtilisateur;
  @override
  @JsonKey(name: 'prenom_utilisateur')
  final String? prenomUtilisateur;
  @override
  @JsonKey(name: 'image_utilisateur')
  final String? photoProfil;
  @override
  @JsonKey(name: 'titre_conseil')
  final String? titreConseil;
  @override
  @JsonKey(name: 'contenuConseil')
  final String? contenuConseil;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdat;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Commentaire(id: $id, planteId: $planteId, userId: $userId, nameUtilisateur: $nameUtilisateur, prenomUtilisateur: $prenomUtilisateur, photoProfil: $photoProfil, titreConseil: $titreConseil, contenuConseil: $contenuConseil, createdat: $createdat, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Commentaire &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planteId, planteId) ||
                other.planteId == planteId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nameUtilisateur, nameUtilisateur) ||
                other.nameUtilisateur == nameUtilisateur) &&
            (identical(other.prenomUtilisateur, prenomUtilisateur) ||
                other.prenomUtilisateur == prenomUtilisateur) &&
            (identical(other.photoProfil, photoProfil) ||
                other.photoProfil == photoProfil) &&
            (identical(other.titreConseil, titreConseil) ||
                other.titreConseil == titreConseil) &&
            (identical(other.contenuConseil, contenuConseil) ||
                other.contenuConseil == contenuConseil) &&
            (identical(other.createdat, createdat) ||
                other.createdat == createdat) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      planteId,
      userId,
      nameUtilisateur,
      prenomUtilisateur,
      photoProfil,
      titreConseil,
      contenuConseil,
      createdat,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentaireCopyWith<_$_Commentaire> get copyWith =>
      __$$_CommentaireCopyWithImpl<_$_Commentaire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentaireToJson(
      this,
    );
  }
}

abstract class _Commentaire implements Commentaire {
  const factory _Commentaire(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'plante_id') final int? planteId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'name_utilisateur') final String? nameUtilisateur,
      @JsonKey(name: 'prenom_utilisateur') final String? prenomUtilisateur,
      @JsonKey(name: 'image_utilisateur') final String? photoProfil,
      @JsonKey(name: 'titre_conseil') final String? titreConseil,
      @JsonKey(name: 'contenuConseil') final String? contenuConseil,
      @JsonKey(name: 'created_at') final DateTime? createdat,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$_Commentaire;

  factory _Commentaire.fromJson(Map<String, dynamic> json) =
      _$_Commentaire.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'plante_id')
  int? get planteId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'name_utilisateur')
  String? get nameUtilisateur;
  @override
  @JsonKey(name: 'prenom_utilisateur')
  String? get prenomUtilisateur;
  @override
  @JsonKey(name: 'image_utilisateur')
  String? get photoProfil;
  @override
  @JsonKey(name: 'titre_conseil')
  String? get titreConseil;
  @override
  @JsonKey(name: 'contenuConseil')
  String? get contenuConseil;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdat;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CommentaireCopyWith<_$_Commentaire> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plante.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plante _$PlanteFromJson(Map<String, dynamic> json) {
  return _Plante.fromJson(json);
}

/// @nodoc
mixin _$Plante {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nom_plante')
  String? get nomPlante => throw _privateConstructorUsedError;
  @JsonKey(name: 'chemin_plante')
  String? get cheminPlante => throw _privateConstructorUsedError;
  @JsonKey(name: 'caracteristiques')
  String? get caracteristiques => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'localisation')
  String? get localisation => throw _privateConstructorUsedError;
  @JsonKey(name: 'prenom_utilisateur')
  String? get prenomUtilisateur => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_utilisateur')
  String? get nameUtilisateur => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_utlisateur')
  String? get photoProfil => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_type')
  int? get idType => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanteCopyWith<Plante> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanteCopyWith<$Res> {
  factory $PlanteCopyWith(Plante value, $Res Function(Plante) then) =
      _$PlanteCopyWithImpl<$Res, Plante>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'nom_plante') String? nomPlante,
      @JsonKey(name: 'chemin_plante') String? cheminPlante,
      @JsonKey(name: 'caracteristiques') String? caracteristiques,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'localisation') String? localisation,
      @JsonKey(name: 'prenom_utilisateur') String? prenomUtilisateur,
      @JsonKey(name: 'name_utilisateur') String? nameUtilisateur,
      @JsonKey(name: 'image_utlisateur') String? photoProfil,
      @JsonKey(name: 'id_type') int? idType,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$PlanteCopyWithImpl<$Res, $Val extends Plante>
    implements $PlanteCopyWith<$Res> {
  _$PlanteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomPlante = freezed,
    Object? cheminPlante = freezed,
    Object? caracteristiques = freezed,
    Object? description = freezed,
    Object? localisation = freezed,
    Object? prenomUtilisateur = freezed,
    Object? nameUtilisateur = freezed,
    Object? photoProfil = freezed,
    Object? idType = freezed,
    Object? image = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomPlante: freezed == nomPlante
          ? _value.nomPlante
          : nomPlante // ignore: cast_nullable_to_non_nullable
              as String?,
      cheminPlante: freezed == cheminPlante
          ? _value.cheminPlante
          : cheminPlante // ignore: cast_nullable_to_non_nullable
              as String?,
      caracteristiques: freezed == caracteristiques
          ? _value.caracteristiques
          : caracteristiques // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      localisation: freezed == localisation
          ? _value.localisation
          : localisation // ignore: cast_nullable_to_non_nullable
              as String?,
      prenomUtilisateur: freezed == prenomUtilisateur
          ? _value.prenomUtilisateur
          : prenomUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      nameUtilisateur: freezed == nameUtilisateur
          ? _value.nameUtilisateur
          : nameUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfil: freezed == photoProfil
          ? _value.photoProfil
          : photoProfil // ignore: cast_nullable_to_non_nullable
              as String?,
      idType: freezed == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanteCopyWith<$Res> implements $PlanteCopyWith<$Res> {
  factory _$$_PlanteCopyWith(_$_Plante value, $Res Function(_$_Plante) then) =
      __$$_PlanteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'nom_plante') String? nomPlante,
      @JsonKey(name: 'chemin_plante') String? cheminPlante,
      @JsonKey(name: 'caracteristiques') String? caracteristiques,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'localisation') String? localisation,
      @JsonKey(name: 'prenom_utilisateur') String? prenomUtilisateur,
      @JsonKey(name: 'name_utilisateur') String? nameUtilisateur,
      @JsonKey(name: 'image_utlisateur') String? photoProfil,
      @JsonKey(name: 'id_type') int? idType,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_PlanteCopyWithImpl<$Res>
    extends _$PlanteCopyWithImpl<$Res, _$_Plante>
    implements _$$_PlanteCopyWith<$Res> {
  __$$_PlanteCopyWithImpl(_$_Plante _value, $Res Function(_$_Plante) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomPlante = freezed,
    Object? cheminPlante = freezed,
    Object? caracteristiques = freezed,
    Object? description = freezed,
    Object? localisation = freezed,
    Object? prenomUtilisateur = freezed,
    Object? nameUtilisateur = freezed,
    Object? photoProfil = freezed,
    Object? idType = freezed,
    Object? image = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Plante(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomPlante: freezed == nomPlante
          ? _value.nomPlante
          : nomPlante // ignore: cast_nullable_to_non_nullable
              as String?,
      cheminPlante: freezed == cheminPlante
          ? _value.cheminPlante
          : cheminPlante // ignore: cast_nullable_to_non_nullable
              as String?,
      caracteristiques: freezed == caracteristiques
          ? _value.caracteristiques
          : caracteristiques // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      localisation: freezed == localisation
          ? _value.localisation
          : localisation // ignore: cast_nullable_to_non_nullable
              as String?,
      prenomUtilisateur: freezed == prenomUtilisateur
          ? _value.prenomUtilisateur
          : prenomUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      nameUtilisateur: freezed == nameUtilisateur
          ? _value.nameUtilisateur
          : nameUtilisateur // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfil: freezed == photoProfil
          ? _value.photoProfil
          : photoProfil // ignore: cast_nullable_to_non_nullable
              as String?,
      idType: freezed == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
class _$_Plante implements _Plante {
  const _$_Plante(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'nom_plante') this.nomPlante,
      @JsonKey(name: 'chemin_plante') this.cheminPlante,
      @JsonKey(name: 'caracteristiques') this.caracteristiques,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'localisation') this.localisation,
      @JsonKey(name: 'prenom_utilisateur') this.prenomUtilisateur,
      @JsonKey(name: 'name_utilisateur') this.nameUtilisateur,
      @JsonKey(name: 'image_utlisateur') this.photoProfil,
      @JsonKey(name: 'id_type') this.idType,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_Plante.fromJson(Map<String, dynamic> json) =>
      _$$_PlanteFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'nom_plante')
  final String? nomPlante;
  @override
  @JsonKey(name: 'chemin_plante')
  final String? cheminPlante;
  @override
  @JsonKey(name: 'caracteristiques')
  final String? caracteristiques;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'localisation')
  final String? localisation;
  @override
  @JsonKey(name: 'prenom_utilisateur')
  final String? prenomUtilisateur;
  @override
  @JsonKey(name: 'name_utilisateur')
  final String? nameUtilisateur;
  @override
  @JsonKey(name: 'image_utlisateur')
  final String? photoProfil;
  @override
  @JsonKey(name: 'id_type')
  final int? idType;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Plante(id: $id, nomPlante: $nomPlante, cheminPlante: $cheminPlante, caracteristiques: $caracteristiques, description: $description, localisation: $localisation, prenomUtilisateur: $prenomUtilisateur, nameUtilisateur: $nameUtilisateur, photoProfil: $photoProfil, idType: $idType, image: $image, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Plante &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomPlante, nomPlante) ||
                other.nomPlante == nomPlante) &&
            (identical(other.cheminPlante, cheminPlante) ||
                other.cheminPlante == cheminPlante) &&
            (identical(other.caracteristiques, caracteristiques) ||
                other.caracteristiques == caracteristiques) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.localisation, localisation) ||
                other.localisation == localisation) &&
            (identical(other.prenomUtilisateur, prenomUtilisateur) ||
                other.prenomUtilisateur == prenomUtilisateur) &&
            (identical(other.nameUtilisateur, nameUtilisateur) ||
                other.nameUtilisateur == nameUtilisateur) &&
            (identical(other.photoProfil, photoProfil) ||
                other.photoProfil == photoProfil) &&
            (identical(other.idType, idType) || other.idType == idType) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nomPlante,
      cheminPlante,
      caracteristiques,
      description,
      localisation,
      prenomUtilisateur,
      nameUtilisateur,
      photoProfil,
      idType,
      image,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanteCopyWith<_$_Plante> get copyWith =>
      __$$_PlanteCopyWithImpl<_$_Plante>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanteToJson(
      this,
    );
  }
}

abstract class _Plante implements Plante {
  const factory _Plante(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'nom_plante') final String? nomPlante,
      @JsonKey(name: 'chemin_plante') final String? cheminPlante,
      @JsonKey(name: 'caracteristiques') final String? caracteristiques,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'localisation') final String? localisation,
      @JsonKey(name: 'prenom_utilisateur') final String? prenomUtilisateur,
      @JsonKey(name: 'name_utilisateur') final String? nameUtilisateur,
      @JsonKey(name: 'image_utlisateur') final String? photoProfil,
      @JsonKey(name: 'id_type') final int? idType,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$_Plante;

  factory _Plante.fromJson(Map<String, dynamic> json) = _$_Plante.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'nom_plante')
  String? get nomPlante;
  @override
  @JsonKey(name: 'chemin_plante')
  String? get cheminPlante;
  @override
  @JsonKey(name: 'caracteristiques')
  String? get caracteristiques;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'localisation')
  String? get localisation;
  @override
  @JsonKey(name: 'prenom_utilisateur')
  String? get prenomUtilisateur;
  @override
  @JsonKey(name: 'name_utilisateur')
  String? get nameUtilisateur;
  @override
  @JsonKey(name: 'image_utlisateur')
  String? get photoProfil;
  @override
  @JsonKey(name: 'id_type')
  int? get idType;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PlanteCopyWith<_$_Plante> get copyWith =>
      throw _privateConstructorUsedError;
}

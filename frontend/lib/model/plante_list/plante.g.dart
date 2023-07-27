// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plante.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Plante _$$_PlanteFromJson(Map<String, dynamic> json) => _$_Plante(
      id: json['id'] as int?,
      nomPlante: json['nom_plante'] as String?,
      cheminPlante: json['chemin_plante'] as String?,
      caracteristiques: json['caracteristiques'] as String?,
      description: json['description'] as String?,
      localisation: json['localisation'] as String?,
      prenomUtilisateur: json['prenom_utilisateur'] as String?,
      nameUtilisateur: json['name_utilisateur'] as String?,
      photoProfil: json['image_utlisateur'] as String?,
      idType: json['id_type'] as int?,
      image: json['image'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_PlanteToJson(_$_Plante instance) => <String, dynamic>{
      'id': instance.id,
      'nom_plante': instance.nomPlante,
      'chemin_plante': instance.cheminPlante,
      'caracteristiques': instance.caracteristiques,
      'description': instance.description,
      'localisation': instance.localisation,
      'prenom_utilisateur': instance.prenomUtilisateur,
      'name_utilisateur': instance.nameUtilisateur,
      'image_utlisateur': instance.photoProfil,
      'id_type': instance.idType,
      'image': instance.image,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

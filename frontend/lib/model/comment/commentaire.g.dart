// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commentaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Commentaire _$$_CommentaireFromJson(Map<String, dynamic> json) =>
    _$_Commentaire(
      id: json['id'] as int?,
      planteId: json['plante_id'] as int?,
      userId: json['user_id'] as int?,
      nameUtilisateur: json['name_utilisateur'] as String?,
      prenomUtilisateur: json['prenom_utilisateur'] as String?,
      photoProfil: json['image_utilisateur'] as String?,
      titreConseil: json['titre_conseil'] as String?,
      contenuConseil: json['contenuConseil'] as String?,
      createdat: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_CommentaireToJson(_$_Commentaire instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plante_id': instance.planteId,
      'user_id': instance.userId,
      'name_utilisateur': instance.nameUtilisateur,
      'prenom_utilisateur': instance.prenomUtilisateur,
      'image_utilisateur': instance.photoProfil,
      'titre_conseil': instance.titreConseil,
      'contenuConseil': instance.contenuConseil,
      'created_at': instance.createdat?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

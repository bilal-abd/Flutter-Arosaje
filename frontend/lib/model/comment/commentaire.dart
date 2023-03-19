import 'package:freezed_annotation/freezed_annotation.dart';
part 'commentaire.freezed.dart';
part 'commentaire.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Commentaire with _$Commentaire {
  const factory Commentaire({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'plante_id') int? planteId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'name_utilisateur') String? nameUtilisateur,
    @JsonKey(name: 'prenom_utilisateur') String? prenomUtilisateur,
    @JsonKey(name: 'image_utilisateur') String? photoProfil,
    @JsonKey(name: 'titre_conseil') String? titreConseil,
    @JsonKey(name: 'contenuConseil') String? contenuConseil,
    @JsonKey(name: 'created_at') DateTime? createdat,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Commentaire;

  factory Commentaire.empty() {
    return Commentaire(
      planteId: 1,
      prenomUtilisateur: "",
      nameUtilisateur: "",
      photoProfil: "",
      contenuConseil: "",
      createdat: DateTime.now(),
      titreConseil: "",
      userId: 1,
      id: 0,
      updatedAt: DateTime.now(),
    );
  }

  factory Commentaire.fromJson(Map<String, dynamic> json) =>
      _$CommentaireFromJson(json);
}

extension OnCommentaireJson on Map<String, dynamic> {
  Commentaire get toCommentaire {
    return Commentaire.fromJson(this);
  }
}

extension OnListCommentaireJson on List<Map<String, dynamic>> {
  List<Commentaire> get toUser {
    return map<Commentaire>((Map<String, dynamic> e) => e.toCommentaire)
        .toList();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'plante.freezed.dart';
part 'plante.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Plante with _$Plante {
  const factory Plante({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'nom_plante') String? nomPlante,
    @JsonKey(name: 'chemin_plante') String? cheminPlante,
    @JsonKey(name: 'caracteristiques') String? caracteristiques,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'localisation') String? localisation,
    @JsonKey(name: 'id_type') int? idType,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Plante;

  factory Plante.empty() {
    return Plante(
      createdAt: DateTime.now(),
      caracteristiques: "",
      cheminPlante: "",
      description: "",
      idType: 0,
      image: "",
      localisation: "",
      nomPlante: "",
      userId: 1,
      id: 0,
      updatedAt: DateTime.now(),
    );
  }

  factory Plante.fromJson(Map<String, dynamic> json) => _$PlanteFromJson(json);
}

extension OnPlanteJson on Map<String, dynamic> {
  Plante get toPlante {
    return Plante.fromJson(this);
  }
}

extension OnListPlanteJson on List<Map<String, dynamic>> {
  List<Plante> get toUser {
    return map<Plante>((Map<String, dynamic> e) => e.toPlante).toList();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'prenom') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'codepostal') int? codePostal,
    @JsonKey(name: 'ville') String? ville,
    @JsonKey(name: 'numero') int? numero,
    @JsonKey(name: 'rue') String? rue,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.empty() {
    return User(
      createdAt: DateTime.now(),
      emailVerifiedAt: DateTime.now(),
      id: 0,
      name: "",
      numero: 0,
      photo: "",
      role: "",
      rue: "",
      updatedAt: DateTime.now(),
      ville: "",
      codePostal: 0,
      lastName: "",
      email: "",
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension OnUserJson on Map<String, dynamic> {
  User get toUser {
    return User.fromJson(this);
  }
}

extension OnListUserJson on List<Map<String, dynamic>> {
  List<User> get toUser {
    return map<User>((Map<String, dynamic> e) => e.toUser).toList();
  }
}

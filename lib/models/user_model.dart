class UserModel {
  final String id;
  final String name;
  final String photoUrl;

  UserModel({
    required this.id,
    required this.name,
    required this.photoUrl,
  });

  factory UserModel.fromMap(Map data) {
    return UserModel(
      id: data['uid'] ?? '',
      name: data['name'] ?? '',
      photoUrl: data['photoUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "photoUrl": photoUrl,
      };

  UserModel copyWith({
    String? id,
    String? name,
    String? photoUrl,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}

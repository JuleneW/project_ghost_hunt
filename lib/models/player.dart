class Player {
  final String? id;
  final String username;

  Player({this.id, required this.username});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(id: json['id'].toString(), username: json['username'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {if (id != null) 'id': id, 'username': username};
  }
}

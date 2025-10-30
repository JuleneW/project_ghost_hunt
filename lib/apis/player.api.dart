import 'dart:convert';
import 'package:ghost_hunt/models/player.dart';
import 'package:http/http.dart' as http;
import '../globals.dart';

class PlayerApi {
  //   # Local json server (no install)
  //    npx json-server@latest --watch db.json --port 3001
  // Endpoints created automatically:
  // GET/POST http://localhost:3001/ghost-types
  // GET/POST http://localhost:3001/players
  // GET/PUT/PATCH/DELETE http://localhost:3001/ghost-types/:id (same for players)
  // It hot-reloads when you edit db.json.

  static Future<List<Player>> fetchPlayers() async {
    final uri = Uri.parse("$server/players");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((m) => Player.fromJson(m)).toList();
    } else {
      throw Exception('Failed to load players');
    }
  }

  static Future<void> savePlayer(Player player) async {
    final uri = Uri.parse("$server/players");
    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(player.toJson()),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      // Backend likely throws when username exists; bubble up for caller to decide.
      throw Exception('Failed to save player (status ${response.statusCode})');
    }
  }

  /// Uses ONLY existing endpoints:
  /// - GET /players to check if username exists (case-insensitive)
  /// - POST /players to create if it doesn't
  /// Returns the correct welcome message.
  static Future<String> checkOrCreateWelcome(String username) async {
    final trimmed = username.trim();
    if (trimmed.isEmpty) throw Exception('Username is empty');

    // 1) Check existence by scanning the list
    final players = await fetchPlayers();
    final match = players.firstWhere(
      (p) => p.username.toLowerCase() == trimmed.toLowerCase(),
      orElse: () => Player(username: ''),
    );

    if (match.username.isNotEmpty) {
      return 'Welcome back "${match.username}"';
    }

    // 2) Not found → create
    await savePlayer(Player(username: trimmed));
    return 'Welcome "$trimmed"';
  }
}

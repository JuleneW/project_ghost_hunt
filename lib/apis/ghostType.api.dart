import 'dart:convert';
import 'package:ghost_hunt/models/ghost_type.dart';
import 'package:http/http.dart' as http;
import '../globals.dart';

class GhostTypeApi {
  //   # Local json server (no install)
  //    npx json-server@latest --watch db.json --port 3001
  // Endpoints created automatically:
  // GET/POST http://localhost:3001/ghost-types
  // GET/POST http://localhost:3001/players
  // GET/PUT/PATCH/DELETE http://localhost:3001/ghost-types/:id (same for players)
  // It hot-reloads when you edit db.json.

  static Future<List<GhostType>> fetchGhostTypes() async {
    var uri = Uri.parse("$server/ghost-types");

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List jsonobjects = json.decode(response.body);

      return jsonobjects
          .map((ghosttypemap) => GhostType.fromJson(ghosttypemap))
          .toList();
    } else {
      throw Exception('Failed to load ghost types');
    }
  }
}

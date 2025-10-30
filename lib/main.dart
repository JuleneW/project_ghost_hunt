import 'package:flutter/material.dart';
import 'package:ghost_hunt/models/ghost_type.dart';
import 'package:ghost_hunt/screens/test_screen.dart';
// import 'package:ghost_hunt/screens/unity_screen.dart';

void main() {
  runApp(const GhostHuntApp());
}

class GhostHuntApp extends StatelessWidget {
  const GhostHuntApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghost Hunt',
      // home: UnityScreen(),
      home: TestScreen(
        ghostType: GhostType(
          id: '1',
          spawnLocations: [
            // {
            //   "latitude": 51.157714522458186,
            //   "longitude": 4.968181695265942,
            //   "radius": 30,
            //   "locationName": "Innovatiecampus",
            // },
          ],
        ),
      ),
    );
  }
}

// {
//             "name": "Ariados",
//             "description": "A colorful, horned insect-like creature with striped legs and a sharp stinger.",
//             "rarity": "LEGENDARY",
//             "imageUrl": "https://JuleneW.github.io/ghost-images/Ariados.png",
//             "spawnLocations": [
                // {
                //     "latitude": 51.157714522458186,
                //     "longitude": 4.968181695265942,
                //     "radius": 30,
                //     "locationName": "Innovatiecampus"
                // }
//             ]
//         },
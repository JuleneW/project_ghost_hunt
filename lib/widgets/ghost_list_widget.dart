import 'package:flutter/material.dart';
import 'package:ghost_hunt/models/ghost_type.dart';
import 'package:ghost_hunt/widgets/ghost_card.dart';

class GhostListWidget extends StatelessWidget {
  final List<GhostType> ghosts;

  const GhostListWidget({super.key, required this.ghosts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ghosts.length,
      itemBuilder: (context, index) {
        return GhostCard(ghost: ghosts[index]);
      },
    );
  }
}

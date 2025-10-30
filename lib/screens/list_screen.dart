import 'package:flutter/material.dart';
import 'package:ghost_hunt/widgets/colour_background_widget.dart';
import 'package:ghost_hunt/widgets/profile_widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColourBackgroundWidget(),
        Column(children: [ProfileWidget()]),
      ],
    );
  }
}

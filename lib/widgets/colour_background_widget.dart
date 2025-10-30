import 'package:flutter/material.dart';

class ColourBackgroundWidget extends StatelessWidget {
  const ColourBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF796194), Colors.black87],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // child: Scaffold(body: const Center(child: Text('ListScreen'))),
    );
  }
}

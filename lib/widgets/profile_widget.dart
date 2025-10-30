import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Username',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  decoration: TextDecoration.none,
                ),
                textScaler: TextScaler.linear(1.5),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(children: [Text('Score:'), Text('Level:')]),
        ],
      ),
    );
  }
}

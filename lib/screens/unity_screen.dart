// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_embed_unity/flutter_embed_unity.dart';
// import 'package:ghost_hunt/globals.dart';

class UnityScreen extends StatelessWidget {
  const UnityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: EmbedUnity(
              onMessageFromUnity: (String message) {
                // Receive message from Unity
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Send message to Unity
              sendToUnity(
                "MyGameObject", // Game object name
                "SetRotationSpeed", // Unity script function name
                "42", // Message
              );
            },
            child: const Text("Set rotation speed"),
          ),
        ],
      ),
    );
  }

  // // Send chosen location to Unity!
  // void _sendLocation() {
  //   // moet de naam van het gameobject zijn, niet de naam van het script
  //   // de naam van de method
  //   // het object als string
  //   sendToUnity(
  //     "TargetLocation",
  //     "ReceiveTargetJson",
  //     jsonEncode(widget.location.toJson()),
  //   );
  // }

  // // Send username to Unity!
  // void _sendUsername() {
  //   sendToUnity("CurrentUser", "SetUsername", globalUsername!);
  // }

  // void onUnityMessage(message) {
  //   print('RECEIVED MESSAGE FROM UNITY: ${message.toString()}');
  // }
}

import 'package:flutter/material.dart';
import 'package:ghost_hunt/widgets/fitted_background_image_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login screen')),
      body: Stack(children: <Widget>[const BackgroundImage()]),
    );
  }
}

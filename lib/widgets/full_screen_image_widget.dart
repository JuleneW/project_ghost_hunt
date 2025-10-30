import 'package:flutter/material.dart';

class FullScreenImageWidget extends StatelessWidget {
  // Optionele constructor om het pad van de afbeelding flexibel te maken
  final String imagePath;
  final Widget foregroundContent;

  const FullScreenImageWidget({
    super.key,
    required this.imagePath,
    required this.foregroundContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}

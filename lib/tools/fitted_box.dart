import 'package:flutter/material.dart';

class FittedBoxLogoExample extends StatelessWidget {
  const FittedBoxLogoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive Logo with FittedBox")),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain, // Scale the image to fit within the space
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6, // 60% of the screen width
            height: MediaQuery.of(context).size.width * 0.6, // 60% of the screen width (square aspect)
            color: Colors.white, // Background color of the container
            child: Image.network(
              'https://www.pexels.com/photo/man-on-a-rocky-hill-20117732/', // Replace with your logo image asset
              fit: BoxFit.contain, // Ensure the image scales to fit within the box
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FittedBoxLogoExample(),
  ));
}

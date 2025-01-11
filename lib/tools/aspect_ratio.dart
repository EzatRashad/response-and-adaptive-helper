import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRatio Example"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9, // Aspect ratio of 16:9
          child: Container(
            color: Colors.blue,
            child: Image.network(
              'https://www.example.com/your-image-url.jpg', // Replace with your image URL
              fit: BoxFit.cover, // Make sure the image covers the container's area
            ),
          ),
        ),
      ),
    );
  }
}



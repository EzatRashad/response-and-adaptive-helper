// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ResponsiveLoginScreen extends StatelessWidget {
  const ResponsiveLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen properties
    final Size screenSize = MediaQuery.sizeOf(context);
    final Orientation orientation = MediaQuery.of(context).orientation;
    final TextScaler textScaler = MediaQuery.textScalerOf(context);

    // Dynamic dimensions
    final double containerWidth = screenSize.width * 0.8; // 80% of screen width
    final double textSize = textScaler.scale(16);

    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Container
              Container(
                width: screenSize.width * 0.5, // 50% of screen width
                height: orientation == Orientation.portrait
                    ? screenSize.height * 0.2
                    : screenSize.height * 0.15,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'), // Add your logo image
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Form Container
              Container(
                width: containerWidth,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Title
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: textScaler.scale(24),
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Email Field Container
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Password Field Container
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Login Button Container
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login logic
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: textScaler.scale(18)),
                        ),
                      ),
                    ),

                    // Forgot Password
                    TextButton(
                      onPressed: () {
                        // Handle forgot password logic
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: textSize),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Footer Container
              Text(
                "Don't have an account? Sign up!",
                style: TextStyle(fontSize: textSize, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

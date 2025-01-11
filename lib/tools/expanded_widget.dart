import 'package:flutter/material.dart';

class ExpandedMultipleExample extends StatelessWidget {
  const ExpandedMultipleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2, // Takes 2 parts of the available space
            child: Container(
              color: Colors.red,
              child: const Center(child: Text('Expanded 1', style: TextStyle(color: Colors.white))),
            ),
          ),
          Expanded(
            flex: 1, // Takes 1 part of the available space
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Expanded 2', style: TextStyle(color: Colors.white))),
            ),
          ),
          Expanded(
            flex: 1, // Takes 1 part of the available space
            child: Container(
              color: Colors.green,
              child: const Center(child: Text('Expanded 3', style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}

 
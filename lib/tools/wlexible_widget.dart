import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 2, // Takes up 2/6 of the available space
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Center(
                      child: Text('Flex 2',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 1, // Takes up 1/6 of the available space
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: const Center(
                      child: Text('Flex 1',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 3, // Takes up 3/6 of the available space
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: const Center(
                      child: Text('Flex 3',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

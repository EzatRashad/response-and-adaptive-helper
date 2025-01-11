import 'package:flutter/material.dart';

class IntrinsicHeightExample extends StatelessWidget {
  const IntrinsicHeightExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicHeight(
           child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(8),
                  child: const SizedBox(height: 300,),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                    child: Container(
                       color: Colors.blue,
                      padding: const EdgeInsets.all(8),
                    
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                       color: Colors.green,
                      padding: const EdgeInsets.all(8),
                    
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

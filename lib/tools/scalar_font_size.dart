import 'package:flutter/material.dart';

class ScalarFontSize extends StatefulWidget {
  const ScalarFontSize({super.key});

  @override
  State<ScalarFontSize> createState() => _ScalarFontSizeState();
}

class _ScalarFontSizeState extends State<ScalarFontSize> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(fontSize: getFontSize(fontSize: 20)),
        ),
      ),
    );
  }
  // scaLeFactor
  // responsive font size
  // (min , max) fontsize

  double getFontSize({required double fontSize}) {
    double scaleFactor = getScaLeFactor();
    double reponsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize*.8;
    double upperLimit = fontSize*1.2;
    return reponsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaLeFactor() {
    final width = MediaQuery.of(context).size.width;
    if (width <= 600) {
      return width / 400;
    } else if (width <= 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}

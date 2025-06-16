import 'package:flutter/material.dart';

class PositionExamples extends StatelessWidget {
  const PositionExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ví dụ về Position')),
      body: Column(
        children: [
          // Ví dụ 1: Positioned với tọa độ cụ thể
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all()),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(child: Text('TL')),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: Center(child: Text('TR')),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                      child: Center(child: Text('BL')),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                      child: Center(child: Text('BR')),
                    ),
                  ),
                  Center(
                    child: Text('Positioned Examples'),
                  ),
                ],
              ),
            ),
          ),
          
          // Ví dụ 2: Align với các hướng khác nhau
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all()),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 50,
                      height: 50,
                      color: Colors.purple,
                      child: Center(child: Text('TC')),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 50,
                      height: 50,
                      color: Colors.cyan,
                      child: Center(child: Text('CL')),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 50,
                      height: 50,
                      color: Colors.pink,
                      child: Center(child: Text('CR')),
                    ),
                  ),
                  Center(
                    child: Text('Align Examples'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Các alignment options phổ biến:
class AlignmentOptions {
  static const List<AlignmentGeometry> alignments = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];

  // Custom alignment với giá trị từ -1.0 đến 1.0
  static const Alignment customTopRight = Alignment(0.8, -0.8);
  static const Alignment customBottomLeft = Alignment(-0.8, 0.8);
} 
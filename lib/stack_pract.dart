import 'package:flutter/material.dart';

class StackPrac extends StatelessWidget {
  const StackPrac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

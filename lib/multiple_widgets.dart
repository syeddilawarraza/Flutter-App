import 'package:flutter/material.dart';

class MultiWidgets extends StatelessWidget {
  const MultiWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        color: Colors.red,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I am in body"),
            Text("24"),
            Text("I am in body"),
          ],
        ),
      )
    );
  }
}

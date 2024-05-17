import 'package:flutter/material.dart';


class RowPractice extends StatelessWidget {
  const RowPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 40,
            height: 80,
            color: Colors.green,
          ),
          Container(
            width: 40,
            height: 40,
            color: Colors.red,
          ),
          Container(
            width: 40,
            height: 80,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mwf07b/reuseable.dart';

class ReuseableWidget extends StatelessWidget {
  const ReuseableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AbcContainer(abcText: "Container 1"),
          AbcContainer(abcText: "Container 2"),
          AbcContainer(abcText: "Container 3"),



        ],
      ),
    );
  }
}



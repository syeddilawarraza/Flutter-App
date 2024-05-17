import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mwf07b/bnb/main_screen.dart';
import 'package:mwf07b/listview%20and%20reusable/product_page_grid.dart';
import 'package:mwf07b/listview%20and%20reusable/product_widget.dart';
import 'package:mwf07b/reuseable_widget.dart';

import 'listview and reusable/product_page.dart';

void main() {
  runApp(const Talha());
}

class Talha extends StatelessWidget {
  const Talha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
    );
  }
}

class TalhaScreen extends StatelessWidget {
  const TalhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              // border: Border.all(color: Colors.black, width: 10)
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(10, 10))
              ],
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                  image: const NetworkImage(
                      "data:image/jpeg;base64,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"))),
            child: const Text(
            "Mountain Image",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

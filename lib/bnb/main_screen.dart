import 'package:flutter/material.dart';
import 'package:mwf07b/listview%20and%20reusable/product_page_grid.dart';
import 'package:mwf07b/row_practice.dart';
import 'package:mwf07b/stack_pract.dart';

import '../listview and reusable/product_page.dart';
import '../multiple_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  void pageShifter(index){
    setState(() {
      currentIndex = index;
    });
  }


  List<Widget> myScreens = [
    MultiWidgets(),
    RowPractice(),
    StackPrac(),
    ProductScreen(),
    ProductGrid()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                          // 2
      body: myScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: pageShifter,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Column"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Row"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Stack"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "List"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Grid"),
          ]
      ),
    );
  }
}

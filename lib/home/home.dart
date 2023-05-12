import 'package:flutter/material.dart';

class home_layout extends StatelessWidget {
  static const String routName = "home_Layout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo List"),
        // toolbarHeight: 160,
      ),
      // bottomNavigationBar: BottomNavigationBar(items:[
      //   BottomNavigationBarItem(icon: I)
      // ] ),
    );
  }
}

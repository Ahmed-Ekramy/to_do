import 'package:flutter/material.dart';

import '../screens/setting_screen.dart';
import '../screens/task_screen.dart';
import '../screens/widget/show_addTske_modal_bottom_sheet.dart';

class home_layout extends StatefulWidget {
  static const String routName = "home_Layout";

  @override
  State<home_layout> createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("ToDo List"),
        // toolbarHeight: 160,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTaskSheet();
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
        shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 3)),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    size: 33,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 33,
                  ),
                  label: ""),
            ]),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [taskScreen(), settingScreen()];

  void showTaskSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ShowAddTaskSheet()),
        );
      },
    );
  }
}

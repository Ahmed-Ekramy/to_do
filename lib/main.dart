import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';
import 'package:todo/style/themes/themes_class.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: home_layout.routName,
      routes: {
        home_layout.routName: (context) => home_layout(),
      },
      darkTheme: My_theme.darktheme,
      theme: My_theme.lighttheme,
      themeMode: ThemeMode.light,
    );
  }
}

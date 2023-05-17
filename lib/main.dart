import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';
import 'package:todo/style/themes/themes_class.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

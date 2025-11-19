import 'package:demo_nexus_app/pages/Basic_Widgets.dart';
import 'package:demo_nexus_app/pages/Input_Widgets.dart';
import 'package:demo_nexus_app/pages/flash_page.dart';
import 'package:demo_nexus_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.pinkAccent)),
      debugShowCheckedModeBanner: false,
      // routes: {"/": (context) => Flash(), "/home": (context) => HomePage()},
      home: Flash(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/routes.dart';
import 'package:my_telkomsel_clone/ui/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Telkomsel',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.white,
        accentColor: Colors.redAccent
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: Routes.routes,
    );
  }
}

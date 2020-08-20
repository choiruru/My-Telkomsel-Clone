import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/main/main_screen.dart';

class Routes {
  Routes._();

  //static variable
  static const String main = '/main_screen';

  static final routes = <String, WidgetBuilder>{
    main: (BuildContext context) => MainScreen(),
  };
}

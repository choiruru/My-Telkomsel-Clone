import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/ui/account/account.dart';
import 'package:my_telkomsel_clone/ui/explore/explore.dart';
import 'package:my_telkomsel_clone/ui/home/home.dart';
import 'package:my_telkomsel_clone/ui/main/main_view_model.dart';
import 'package:my_telkomsel_clone/ui/point/point.dart';
import 'package:my_telkomsel_clone/ui/shop/shop.dart';
import 'package:stacked/stacked.dart';

class MainScreen extends StatelessWidget {

  static List<Widget> pages = <Widget>[
    HomeScreen(),
    Point(),
    Shop(),
    Explore(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (context, model, child){
        return Scaffold(
          body: Center(
            child: pages[model.selectedIndex]
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home")
              ),
              BottomNavigationBarItem(
                icon: Icon(MdiIcons.trophy),
                title: Text("POIN")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Shop")
              ),
              BottomNavigationBarItem(
                icon: Icon(MdiIcons.rocket),
                title: Text("Explore")
              ),
              BottomNavigationBarItem(
                icon: Icon(MdiIcons.account),
                title: Text("Account")
              )
            ],
            currentIndex: model.selectedIndex,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.black26,
            onTap: (value) {
              model.setSelected(value);
            },
          ),
        );
      },
    );
  }
}

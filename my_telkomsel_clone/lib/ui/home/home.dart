import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child){
        return Scaffold(
          body: Center(
            child: Text(
              "home"
            ),
          ),
        );
      },
    );
  }
}

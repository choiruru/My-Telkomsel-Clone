import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (context, model, child){
        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.amber,
            ),
          ),
        );
      },
    );
  }
}

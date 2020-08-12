import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/explore/explore_view_model.dart';
import 'package:stacked/stacked.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExploreViewModel>.reactive(
        viewModelBuilder: () => ExploreViewModel(),
      builder: (context, model, child){
          return Scaffold(
            body: Center(
              child: Text("explore"),
            ),
          );
      },
    );
  }
}

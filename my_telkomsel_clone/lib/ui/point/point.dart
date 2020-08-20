import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/point/point_view_model.dart';
import 'package:stacked/stacked.dart';

class Point extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PointViewModel>.reactive(
      viewModelBuilder: () => PointViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text("point"),
          ),
        );
      },
    );
  }
}

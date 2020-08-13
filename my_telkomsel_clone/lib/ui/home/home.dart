import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/constant/img_assets.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/circle_image.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/header.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/profile.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child){
        return SafeArea(
          child: Container(
            color: Colors.redAccent,
            child: RefreshIndicator(
              onRefresh: (){

              },
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    floating: false,
                    pinned: true,
                    expandedHeight: 90.0,
                    flexibleSpace: Header(),
                  ),
                  SliverFillRemaining(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Profile()
                          ],
                        ),
                      ),
                    ),
                  )
                ]
              ),
            ),
          ),
        );
      },
    );
  }
}

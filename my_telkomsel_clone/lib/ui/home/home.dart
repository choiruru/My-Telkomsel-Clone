import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/constant/img_assets.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/header.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child){
        return SafeArea(
          child: NestedScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled){
              return <Widget>[
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    floating: true,
                    snap: true,
                    pinned: false,
                    expandedHeight: 90.0,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: Header(),
                  ),
                )
              ];
            },
            body: Builder(
              builder: (BuildContext context) {
                return RefreshIndicator(
                  onRefresh: () {

                  },
                  child: CustomScrollView(
                  // The "controller" and "primary" members should be left
                  // unset, so that the NestedScrollView can control this
                  // inner scroll view.
                  // If the "controller" property is set, then this scroll
                  // view will not be associated with the NestedScrollView.
                    slivers: <Widget>[
                      SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
                        SliverFixedExtentList(
                          itemExtent: 48.0,
                          delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) => ListTile(title: Text('Item $index')),
                          childCount: 30,
                        ),
                      ),
                    ],
                  ),
                );
              }
            ),
          ),
        );
      },
    );
  }
}

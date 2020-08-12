import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/shop/shop_view_model.dart';
import 'package:stacked/stacked.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShopViewModel>.reactive(
      viewModelBuilder: () => ShopViewModel(),
      builder: (context, model, child){
          return Scaffold(
            body: Center(
              child: Text("shop"),
            ),
          );
      },
    );
  }
}

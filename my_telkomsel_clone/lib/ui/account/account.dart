import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/account/account_view_model.dart';
import 'package:stacked/stacked.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountViewModel>.reactive(
        viewModelBuilder: () => AccountViewModel(),
      builder: (context, model, child){
          return Scaffold(
            body: Center(
              child: Text(
                "account"
              ),
            ),
          );
      },
    );
  }
}

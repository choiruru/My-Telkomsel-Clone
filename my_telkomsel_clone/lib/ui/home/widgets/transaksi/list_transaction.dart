import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_last_transaction.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/transaksi/item_last_transaction.dart';

class ListTransaction extends StatelessWidget {
  final List<LastTransaction> models;

  const ListTransaction({Key key, @required this.models}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(models==null || models.isEmpty){
      return Container();
    }
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: models.length>2? 2: models.length,
        itemBuilder: (context, index){
          return ItemLastTransaction(lastTransaction: models[index],);
        }
    );
  }
}

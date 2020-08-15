import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_last_transaction.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/button_see_all.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/divider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/transaksi/list_transaction.dart';

class Transaction extends StatelessWidget {
  final List<LastTransaction> models;

  const Transaction({Key key, @required this.models}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 6,),
          Row(
            children: [
              const SizedBox(width: 14,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.history, size: 12,),
                      const SizedBox(width: 4,),
                      Text(
                        "Last Transaction",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    "Repurchase your last package",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black45
                    ),
                  )
                ],
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              ButtonSeeAll(
                onPressed: (){

                },
              ),
            ],
          ),
          ListTransaction(models: models,),
          const SizedBox(height: 10,),
          HomeDivider(),
        ],
      ),
    );
  }
}

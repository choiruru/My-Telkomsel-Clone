import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/data/model_last_transaction.dart';

class ItemLastTransaction extends StatelessWidget {
  final LastTransaction lastTransaction;

  const ItemLastTransaction({Key key, @required this.lastTransaction}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 1, 10, 1),
          child: Row(
            children: [
              const SizedBox(width: 8,),
              Icon(MdiIcons.history, size: 30,),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lastTransaction.namaPaket,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                  ),
                  Text(
                    lastTransaction.tanggal,
                    style: TextStyle(
                      fontSize: 11
                    ),
                  )
                ],
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              OutlineButton(
                borderSide: BorderSide(color: Colors.black54),
                onPressed: (){

                },
                child: Text("Buy"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_kuota.dart';

class ItemKuota extends StatelessWidget {
  final Kuota kuota;

  const ItemKuota({Key key, this.kuota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  kuota.namaPaket,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                  kuota.kuota,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                  kuota.kadaluarsa,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 11
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

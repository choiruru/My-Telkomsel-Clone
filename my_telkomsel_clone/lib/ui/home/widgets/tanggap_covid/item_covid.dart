import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_covid.dart';

class ItemCovid extends StatelessWidget {
  final TanggapCovid model;

  const ItemCovid({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              model.img,
              fit: BoxFit.cover,
              width: 250,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                model.title,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

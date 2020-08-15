import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_voucher.dart';

class ItemPromo extends StatelessWidget {
  final Voucher model;

  const ItemPromo({Key key, @required this.model}) : super(key: key);

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
              padding: const EdgeInsets.fromLTRB(14,14,14,4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.black12,
                  padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Text(
                    model.type,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14,0,14,14),
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

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';

class ItemDontMiss extends StatelessWidget {
  final String title, desc, img;

  const ItemDontMiss({Key key, @required this.title, @required this.desc, @required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12
                      ),
                    ),
                    const SizedBox(height: 6,),
                    Text(
                      desc,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.network(
              img,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}

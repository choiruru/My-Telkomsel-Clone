import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_campaign.dart';
import 'package:my_telkomsel_clone/utils/screen_size.dart';

class ItemPromoBanner extends StatelessWidget {
  final Promo model;
  final Function onCLick;

  const ItemPromoBanner({Key key, @required this.model, @required this.onCLick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCLick.call();
      },
      child: Card(
        child: Container(
          width: getWidth(context) * 0.78,
          height: getWidth(context) * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                child: Image.network(
                  model.img,
                  fit: BoxFit.cover,
                  width: getWidth(context) * 0.78,
                  height: getWidth(context) * 0.28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 14, 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.black12,
                    padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                    child: Text(
                      model.promoType,
                      style: TextStyle(color: Colors.black87, fontSize: 10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
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
      ),
    );
  }
}

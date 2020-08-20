import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_campaign.dart';
import 'package:my_telkomsel_clone/utils/screen_size.dart';

class ItemPromoVideo extends StatelessWidget {
  final Promo model;
  final Function onCLick;

  const ItemPromoVideo({Key key, @required this.model, @required this.onCLick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onCLick.call();
      },
      child: Card(
        child: Container(
          width: getWidth(context) * 0.78,
          height: getWidth(context) * 0.6,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                child: Image.network(
                  model.img,
                  fit: BoxFit.cover,
                  width: getWidth(context) * 0.78,
                  height: getWidth(context) * 0.6,
                ),
              ),
              Container(
                width: getWidth(context) * 0.78,
                height: getWidth(context) * 0.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black87,
                          Colors.transparent,
                          Colors.transparent
                        ]
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 14, 14, 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white
                    ),
                    child: Icon(Icons.play_arrow, size: 24,),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

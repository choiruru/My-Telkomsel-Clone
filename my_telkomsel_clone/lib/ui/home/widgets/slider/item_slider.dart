import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_slider.dart';

class ItemSlider extends StatelessWidget {
  final SliderData data;

  const ItemSlider({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 80,
          color: Colors.blueAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,2,8,2),
                            child: Text(
                              data.type,
                              style: TextStyle(
                                fontSize: 11
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Text(
                          data.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          data.desc,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  topRight: Radius.elliptical(40, 8),
                  bottomLeft: Radius.elliptical(8, 40)
                ),
                child: Image.network(
                  data.image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomRight,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

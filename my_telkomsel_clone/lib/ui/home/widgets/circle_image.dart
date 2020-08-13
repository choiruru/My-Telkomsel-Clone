import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/img_assets.dart';

class CircleImage extends StatelessWidget {
  final String image;
  final double size;
  final double padding;

  const CircleImage({Key key, this.image, this.size, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((size+padding)/2),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Image.asset(
            image,
            height: size,
            width: size,
          ),
        ),
      ),
    );
  }
}

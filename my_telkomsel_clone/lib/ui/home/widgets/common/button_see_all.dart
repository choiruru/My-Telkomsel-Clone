import 'package:flutter/material.dart';

class ButtonSeeAll extends StatelessWidget {
  final Function onPressed;

  const ButtonSeeAll({Key key, @required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      textColor: Colors.red,
      child: Text(
        "See all",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}

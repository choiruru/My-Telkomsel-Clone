import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/circle_icon.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/circle_image.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 16.0,
            ),
            CircleImage(
              image: ImageAssets.imgHomeHeader,
              size: 30.0,
              padding: 1.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 8, 2),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "09876545678",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(MdiIcons.plus, color: Colors.black87, size: 18,),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(),
              flex: 1,
            ),
            CircleIcon(
              icon: Icons.mail,
            ),
            const SizedBox(
              width: 10.0,
            ),
            CircleIcon(
              icon: MdiIcons.qrcode,
            ),
            const SizedBox(
              width: 16.0,
            )
          ],
        ),
      ),
    );
  }
}

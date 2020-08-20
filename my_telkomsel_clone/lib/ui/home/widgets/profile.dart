import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/circle_image.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              CircleImage(
                key: Key("profile"),
                image: ImageAssets.imgProfile,
                size: 50.0,
                padding: 0.0,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Jung Kook",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Rp 15,000",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Usage limit Rp 0",
                    style: TextStyle(color: Colors.black26, fontSize: 11),
                  ),
                ],
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          MdiIcons.crown,
                          size: 16,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Silver",
                          style: TextStyle(color: Colors.black87, fontSize: 10),
                        )
                      ],
                    ),
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

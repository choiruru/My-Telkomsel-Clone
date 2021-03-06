import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';

class ButtonAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(color: Colors.black54),
                  onPressed: () {},
                  child: Text("Add Credit"),
                  textColor: Colors.black87,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Buy Package"),
                  color: Colors.red,
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(
                width: 14,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            height: 0,
            color: Colors.black12,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(MdiIcons.heartOutline),
                      label: Text("31 POIN")),
                ),
                VerticalDivider(
                  width: 0,
                  color: Colors.black12,
                ),
                Expanded(
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        ImageAssets.imgLinkAja,
                        width: 24,
                        height: 24,
                      ),
                      label: Text("Rp 50,000")),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 14,
            height: 14,
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}

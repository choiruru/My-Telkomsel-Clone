import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/divider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/dont_miss/item_dont_miss.dart';

class DontMissSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              "Don't miss",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 12
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0,10,10),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    child: ItemDontMiss(
                      title: "Send Gift",
                      desc: "package or add credit",
                      img: ImageAssets.imgGiftBox,
                    ),
                  ),
                ),
                const SizedBox(width: 2,),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: ItemDontMiss(
                      title: "Daily Check-In",
                      desc: "Collect point everyday",
                      img: ImageAssets.imgCalendarBox,
                    ),
                  ),
                )
              ],
            ),
          ),
          HomeDivider()
        ],
      ),
    );
  }
}

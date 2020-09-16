import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/data/model_home_campaign.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/item_promo_banner.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/item_promo_banner_small.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/item_promo_video.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/item_promo_video_banner.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/item_view_all.dart';

class ListPromo extends StatelessWidget {
  final List<Promo> models;
  static const int maxList = 5;

  const ListPromo({Key key, @required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          itemCount: models.length > maxList ? (maxList + 1) : models.length,
          itemBuilder: (context, index) {
            if (index == maxList) {
              return ItemViewAll();
            } else if (models[index].type == "banner") {
              return ItemPromoBanner(
                model: models[index],
                onCLick: () => {},
              );
            } else if (models[index].type == "video") {
              return ItemPromoVideo(
                model: models[index],
                onCLick: () => {},
              );
            } else if (models[index].type == "video_banner") {
              return ItemPromoVideoBanner(
                model: models[index],
                onCLick: () => {},
              );
            } else if (models[index].type == "banner_small") {
              return ItemPromoBannerSmall(
                model: models[index],
                onCLick: () => {},
              );
            }
            return Container();
          }),
    );
  }
}

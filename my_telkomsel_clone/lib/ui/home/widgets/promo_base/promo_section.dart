import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/data/model_home_campaign.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/divider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/list_button.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/list_promo.dart';

class PromoSection extends StatelessWidget {
  final HomeCampaigns homeCampaign;
  final List<String> buttons = List();
  final Function(int) onButtonSelected;

  PromoSection({Key key, @required this.homeCampaign, @required this.onButtonSelected}){
    homeCampaign.campaign.forEach((element) {
      buttons.add(element.buttonText);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (homeCampaign == null || homeCampaign.campaign == null) {
      return Container();
    }
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            child: Row(
              children: [
                Image.network(
                  homeCampaign.icon,
                  width: 12,
                  height: 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  homeCampaign.title,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              homeCampaign.subtitle,
              style: TextStyle(color: Colors.black45, fontSize: 11),
            ),
          ),
          ListButton(
            buttons: buttons,
            selectedButton: homeCampaign.selectedButton,
            onButtonClick: (index){
              onButtonSelected.call(index);
            },
          ),
          ListPromo(
            models: homeCampaign.campaign[homeCampaign.selectedButton].promo,
          ),
          HomeDivider(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/promo_section.dart';

class CampaignSection extends StatelessWidget {
  final HomeViewModel viewModel;

  const CampaignSection({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(viewModel.modelCampaign == null){
      return Container();
    }
    return ListView.builder(
      itemCount: viewModel.modelCampaign.homeCampaigns.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index){
        return PromoSection(
          homeCampaign: viewModel.modelCampaign.homeCampaigns[index],
          onButtonSelected: (indexButton){
            viewModel.updateSelectedButton(indexButton, index);
          },
        );
      },
    );
  }
}

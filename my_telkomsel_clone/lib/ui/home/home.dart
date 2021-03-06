import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/button_action.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/dont_miss/dont_miss_section.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/header.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/kuota/list_kuota.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/profile.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/promo_base/campaign.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/slider/slider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/tanggap_covid/covid_section.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/transaksi/last_transaction.dart';
import 'package:my_telkomsel_clone/widgets/detail_scaffold.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, child) {
        return SafeArea(
          child: Container(
//            decoration: BoxDecoration(
//              image: DecorationImage(
//                  image: NetworkImage(
//                    ImageAssets.imgHomeBg,
//                  ),
//                  alignment: Alignment.topCenter),
//            ),
            child: RefreshIndicator(
              onRefresh: () {},
              child: DetailScaffold(
                hasPinnedAppBar: true,
                expandedHeight:90,
                  slivers: <Widget>[
                SliverAppBar(
                  floating: false,
                  pinned: true,
                  expandedHeight: 90.0,
                  flexibleSpace: Header(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    switch (index) {
                      case 0:
                        return Profile();
                      case 1:
                        return ListKuota(
                          models: model.kuotas,
                        );
                      case 2:
                        return ButtonAction();
                      case 3:
                        return Transaction(models: model.lasTransaction);
                      case 4:
                        return SliderSection(
                          viewModel: model,
                        );
                      case 5:
                        return DontMissSection();
                      case 6:
                        return CovidSection(
                          models: model.covids,
                        );
                      case 7:
                        return CampaignSection(
                          viewModel: model,
                        );
                      case 8:
                        return Container();
                      case 9:
                        return Container();
                      default:
                        return Container();
                    }
                    return Profile();
                  }, childCount: 10),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}

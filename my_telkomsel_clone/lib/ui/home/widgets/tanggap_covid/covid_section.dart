import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_covid.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/button_see_all.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/divider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/tanggap_covid/list_covid.dart';

class CovidSection extends StatelessWidget {
  final List<TanggapCovid> models;

  const CovidSection({Key key, @required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (models == null || models.isEmpty) {
      return Container();
    }
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              children: [
                Text(
                  "Telkomsel Tanggap Covid-19",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                ButtonSeeAll(
                  onPressed: () {},
                ),
              ],
            ),
          ),
          ListCovid(
            models: models,
          ),
          HomeDivider(),
        ],
      ),
    );
  }
}

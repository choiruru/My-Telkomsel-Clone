import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_covid.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/tanggap_covid/item_covid.dart';

class ListCovid extends StatelessWidget {
  final List<TanggapCovid> models;

  const ListCovid({Key key, @required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          itemCount: models.length,
          itemBuilder: (context, index) {
            return ItemCovid(
              model: models[index],
            );
          }),
    );
  }
}

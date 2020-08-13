import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/data/model_home_kuota.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/kuota/item_kuota.dart';

class ListKuota extends StatelessWidget {
  final List<Kuota> models;

  const ListKuota({Key key, @required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(models == null || models.length ==0){
      return Container();
    }else{
      return Container(
        height: 76,
        color: Colors.white,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 8, right: 8
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 4,),
          scrollDirection: Axis.horizontal,
            itemCount: models.length,
            itemBuilder: (context, index){
            return ItemKuota(kuota: models[index],);
            }
        ),
      );
    }
  }
}

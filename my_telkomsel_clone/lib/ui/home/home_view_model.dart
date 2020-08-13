import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/data/model_home_kuota.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{

  List<Kuota> _kuotas;
  List<Kuota> get kuotas => _kuotas;

  Future<void> init(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context).loadString(JsonAssets.kuota);
    _kuotas  = ModelHomeKuota.fromJson(json.decode(data)).kuota;
    notifyListeners();
  }

}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/data/model_home_kuota.dart';
import 'package:my_telkomsel_clone/data/model_last_transaction.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{

  List<Kuota> _kuotas;
  List<Kuota> get kuotas => _kuotas;

  List<LastTransaction> _lastTransactions;
  List<LastTransaction> get lasTransaction => _lastTransactions;

  void init(BuildContext context) {
    _getKuota(context);
    _getLastTransaction(context);
  }

  Future<void> _getKuota(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context).loadString(JsonAssets.kuota);
    _kuotas  = ModelHomeKuota.fromJson(json.decode(data)).kuota;
    notifyListeners();
  }

  Future<void> _getLastTransaction(BuildContext context) async {
    String data  = await DefaultAssetBundle.of(context).loadString(JsonAssets.lastTransaction);
    _lastTransactions = ModelLastTransaction.fromJson(json.decode(data)).lastTransaction;
    notifyListeners();
  }

}
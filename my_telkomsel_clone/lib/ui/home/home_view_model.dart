import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/constant/assets.dart';
import 'package:my_telkomsel_clone/data/model_home_covid.dart';
import 'package:my_telkomsel_clone/data/model_home_kuota.dart';
import 'package:my_telkomsel_clone/data/model_home_slider.dart';
import 'package:my_telkomsel_clone/data/model_home_campaign.dart';
import 'package:my_telkomsel_clone/data/model_last_transaction.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{

  List<Kuota> _kuotas;
  List<Kuota> get kuotas => _kuotas;

  List<LastTransaction> _lastTransactions;
  List<LastTransaction> get lasTransaction => _lastTransactions;

  List<SliderData> _slider;
  List<SliderData> get slider => _slider;

  List<TanggapCovid> _covids;
  List<TanggapCovid> get covids => _covids;

  ModelHomeCampaign _modelCampaign;
  ModelHomeCampaign get modelCampaign => _modelCampaign;

  int indexSlider = 0;

  void init(BuildContext context) {
    _getKuota(context);
    _getLastTransaction(context);
    _getSlider(context);
    _getCovid(context);
    _getVoucher(context);
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

  Future<void> _getSlider(BuildContext context) async{
    String data = await DefaultAssetBundle.of(context).loadString(JsonAssets.slider);
    _slider = ModelSlider.fromJson(json.decode(data)).sliderData;
    notifyListeners();
  }

  Future<void> _getCovid(BuildContext context) async{
    String data = await DefaultAssetBundle.of(context).loadString(JsonAssets.covid);
    _covids = ModelCovid.fromJson(json.decode(data)).tanggapCovid;
    notifyListeners();
  }
  
  Future<void> _getVoucher(BuildContext context) async{
    String data = await DefaultAssetBundle.of(context).loadString(JsonAssets.homeCampaign);
    _modelCampaign = ModelHomeCampaign.fromJson(json.decode(data));
    notifyListeners();
  }

  void updateIndexSlider(int index){
    indexSlider = index;
    notifyListeners();
  }
  
  void updateSelectedButton(int indexButton, int indexCampaign){
    if(indexButton!=_modelCampaign.homeCampaigns[indexCampaign].selectedButton){
      _modelCampaign.homeCampaigns[indexCampaign].selectedButton = indexButton;
      notifyListeners();
    }
  }

}
class ModelHomeCampaign {
  List<HomeCampaigns> homeCampaigns;

  ModelHomeCampaign({this.homeCampaigns});

  ModelHomeCampaign.fromJson(Map<String, dynamic> json) {
    if (json['home_campaigns'] != null) {
      homeCampaigns = new List<HomeCampaigns>();
      json['home_campaigns'].forEach((v) {
        homeCampaigns.add(new HomeCampaigns.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.homeCampaigns != null) {
      data['home_campaigns'] =
          this.homeCampaigns.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeCampaigns {
  String title;
  String subtitle;
  String icon;
  int selectedButton;
  List<Campaign> campaign;

  HomeCampaigns(
      {this.title,
        this.subtitle,
        this.icon,
        this.selectedButton,
        this.campaign});

  HomeCampaigns.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon = json['icon'];
    selectedButton = json['selected_button'];
    if (json['campaign'] != null) {
      campaign = new List<Campaign>();
      json['campaign'].forEach((v) {
        campaign.add(new Campaign.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['icon'] = this.icon;
    data['selected_button'] = this.selectedButton;
    if (this.campaign != null) {
      data['campaign'] = this.campaign.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Campaign {
  String buttonText;
  List<Promo> promo;

  Campaign({this.buttonText, this.promo});

  Campaign.fromJson(Map<String, dynamic> json) {
    buttonText = json['button_text'];
    if (json['promo'] != null) {
      promo = new List<Promo>();
      json['promo'].forEach((v) {
        promo.add(new Promo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['button_text'] = this.buttonText;
    if (this.promo != null) {
      data['promo'] = this.promo.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Promo {
  String type;
  String img;
  String title;
  String tag;

  Promo({this.type, this.img, this.title, this.tag});

  Promo.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    img = json['img'];
    title = json['title'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['img'] = this.img;
    data['title'] = this.title;
    data['tag'] = this.tag;
    return data;
  }
}

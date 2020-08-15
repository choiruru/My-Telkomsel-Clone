class ModelVoucher {
  List<Voucher> voucher;
  List<ButtonData> buttonData;
  int selectedButton;

  ModelVoucher({this.voucher, this.buttonData, this.selectedButton});

  ModelVoucher.fromJson(Map<String, dynamic> json) {
    if (json['voucher'] != null) {
      voucher = new List<Voucher>();
      json['voucher'].forEach((v) {
        voucher.add(new Voucher.fromJson(v));
      });
    }
    if (json['button_data'] != null) {
      buttonData = new List<ButtonData>();
      json['button_data'].forEach((v) {
        buttonData.add(new ButtonData.fromJson(v));
      });
    }
    selectedButton = json['selected_button'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.voucher != null) {
      data['voucher'] = this.voucher.map((v) => v.toJson()).toList();
    }
    if (this.buttonData != null) {
      data['button_data'] = this.buttonData.map((v) => v.toJson()).toList();
    }
    data['selected_button'] = this.selectedButton;
    return data;
  }
}

class Voucher {
  String img;
  String title;
  String type;

  Voucher({this.img, this.title, this.type});

  Voucher.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['title'] = this.title;
    data['type'] = this.type;
    return data;
  }
}

class ButtonData {
  String text;

  ButtonData({this.text});

  ButtonData.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    return data;
  }
}

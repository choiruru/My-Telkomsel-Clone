class ModelCovid {
  List<TanggapCovid> tanggapCovid;

  ModelCovid({this.tanggapCovid});

  ModelCovid.fromJson(Map<String, dynamic> json) {
    if (json['tanggap_covid'] != null) {
      tanggapCovid = new List<TanggapCovid>();
      json['tanggap_covid'].forEach((v) {
        tanggapCovid.add(new TanggapCovid.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tanggapCovid != null) {
      data['tanggap_covid'] = this.tanggapCovid.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TanggapCovid {
  String img;
  String title;

  TanggapCovid({this.img, this.title});

  TanggapCovid.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['title'] = this.title;
    return data;
  }
}

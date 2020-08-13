class ModelHomeKuota {
  List<Kuota> kuota;

  ModelHomeKuota({this.kuota});

  ModelHomeKuota.fromJson(Map<String, dynamic> json) {
    if (json['kuota'] != null) {
      kuota = new List<Kuota>();
      json['kuota'].forEach((v) {
        kuota.add(new Kuota.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kuota != null) {
      data['kuota'] = this.kuota.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kuota {
  String namaPaket;
  String kuota;
  String kadaluarsa;

  Kuota({this.namaPaket, this.kuota, this.kadaluarsa});

  Kuota.fromJson(Map<String, dynamic> json) {
    namaPaket = json['namaPaket'];
    kuota = json['kuota'];
    kadaluarsa = json['kadaluarsa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['namaPaket'] = this.namaPaket;
    data['kuota'] = this.kuota;
    data['kadaluarsa'] = this.kadaluarsa;
    return data;
  }
}

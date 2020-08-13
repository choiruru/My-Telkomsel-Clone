class ModelLastTransaction {
  List<LastTransaction> lastTransaction;

  ModelLastTransaction({this.lastTransaction});

  ModelLastTransaction.fromJson(Map<String, dynamic> json) {
    if (json['last_transaction'] != null) {
      lastTransaction = new List<LastTransaction>();
      json['last_transaction'].forEach((v) {
        lastTransaction.add(new LastTransaction.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lastTransaction != null) {
      data['last_transaction'] =
          this.lastTransaction.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LastTransaction {
  String namaPaket;
  String tanggal;

  LastTransaction({this.namaPaket, this.tanggal});

  LastTransaction.fromJson(Map<String, dynamic> json) {
    namaPaket = json['namaPaket'];
    tanggal = json['tanggal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['namaPaket'] = this.namaPaket;
    data['tanggal'] = this.tanggal;
    return data;
  }
}

class ModelSlider {
  List<SliderData> sliderData;

  ModelSlider({this.sliderData});

  ModelSlider.fromJson(Map<String, dynamic> json) {
    if (json['slider_data'] != null) {
      sliderData = new List<SliderData>();
      json['slider_data'].forEach((v) {
        sliderData.add(new SliderData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sliderData != null) {
      data['slider_data'] = this.sliderData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderData {
  String type;
  String title;
  String desc;
  String image;

  SliderData({this.type, this.title, this.desc, this.image});

  SliderData.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    desc = json['desc'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['image'] = this.image;
    return data;
  }
}

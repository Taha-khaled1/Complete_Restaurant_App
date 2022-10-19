class Foofs {
  String? statues;
  List<Data>? data;

  Foofs({this.statues, this.data});

  Foofs.fromJson(Map<String, dynamic> json) {
    statues = json['statues'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statues'] = this.statues;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? foodsId;
  String? foodsName;
  String? foodsImages;
  String? foodsTime;
  int? offers;
  int? foodsRelation;
  String? foodsPrice;

  Data(
      {this.foodsId,
      this.foodsName,
      this.foodsImages,
      this.foodsTime,
      this.offers,
      this.foodsRelation,
      this.foodsPrice});

  Data.fromJson(Map<String, dynamic> json) {
    foodsId = json['foods_id'];
    foodsName = json['foods_name'];
    foodsImages = json['foods_images'];
    foodsTime = json['foods_time'];
    offers = json['offers'];
    foodsRelation = json['foods_relation'];
    foodsPrice = json['foods_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foods_id'] = this.foodsId;
    data['foods_name'] = this.foodsName;
    data['foods_images'] = this.foodsImages;
    data['foods_time'] = this.foodsTime;
    data['offers'] = this.offers;
    data['foods_relation'] = this.foodsRelation;
    data['foods_price'] = this.foodsPrice;
    return data;
  }
}

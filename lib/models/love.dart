class love {
  String? statues;
  List<Data>? data;

  love({this.statues, this.data});

  love.fromJson(Map<String, dynamic> json) {
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
  int? loveId;
  int? loveUserId;
  int? loveFoodId;

  Data({this.loveId, this.loveUserId, this.loveFoodId});

  Data.fromJson(Map<String, dynamic> json) {
    loveId = json['love_id'];
    loveUserId = json['love_userId'];
    loveFoodId = json['love_foodId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['love_id'] = this.loveId;
    data['love_userId'] = this.loveUserId;
    data['love_foodId'] = this.loveFoodId;
    return data;
  }
}

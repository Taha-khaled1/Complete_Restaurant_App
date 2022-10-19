class cart {
  String? statues;
  List<Data>? data;

  cart({this.statues, this.data});

  cart.fromJson(Map<String, dynamic> json) {
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
  int? cartId;
  String? cartName;
  String? cartPrice;
  String? cartOffers;
  String? cartReating;
  String? cartLove;
  int? cartRelation;
  String? cartDetails;
  String? cartImage;
  String? cartTime;

  Data(
      {this.cartId,
      this.cartName,
      this.cartPrice,
      this.cartOffers,
      this.cartReating,
      this.cartLove,
      this.cartRelation,
      this.cartDetails,
      this.cartImage,
      this.cartTime});

  Data.fromJson(Map<String, dynamic> json) {
    cartId = json['cart_id'];
    cartName = json['cart_name'];
    cartPrice = json['cart_price'];
    cartOffers = json['cart_offers'];
    cartReating = json['cart_reating'];
    cartLove = json['cart_love'];
    cartRelation = json['cart_relation'];
    cartDetails = json['cart_details'];
    cartImage = json['cart_image'];
    cartTime = json['cart_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_id'] = this.cartId;
    data['cart_name'] = this.cartName;
    data['cart_price'] = this.cartPrice;
    data['cart_offers'] = this.cartOffers;
    data['cart_reating'] = this.cartReating;
    data['cart_love'] = this.cartLove;
    data['cart_relation'] = this.cartRelation;
    data['cart_details'] = this.cartDetails;
    data['cart_image'] = this.cartImage;
    data['cart_time'] = this.cartTime;
    return data;
  }
}

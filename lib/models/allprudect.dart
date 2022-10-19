class allprudect {
  String? statues;
  List<Datg>? data;

  allprudect({this.statues, this.data});

  allprudect.fromJson(Map<String, dynamic> json) {
    statues = json['statues'];
    if (json['data'] != null) {
      data = <Datg>[];
      json['data'].forEach((v) {
        data!.add(new Datg.fromJson(v));
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

class Datg {
  int? cartId;
  String? cartName;
  String? cartPrice;
  String? cartOffers;
  String? cartReating;
  String? cartLove;
  String? cartDetails;
  String? cartImage;
  String? cartTime;
  int? cartRela;

  Datg(
      {this.cartId,
      this.cartName,
      this.cartPrice,
      this.cartOffers,
      this.cartReating,
      this.cartLove,
      this.cartDetails,
      this.cartImage,
      this.cartTime,
      this.cartRela});

  Datg.fromJson(Map<String, dynamic> json) {
    cartId = json['cart_id'];
    cartName = json['cart_name'];
    cartPrice = json['cart_price'];
    cartOffers = json['cart_offers'];
    cartReating = json['cart_reating'];
    cartLove = json['cart_love'];
    cartDetails = json['cart_details'];
    cartImage = json['cart_image'];
    cartTime = json['cart_time'];
    cartRela = json['cart_rela'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_id'] = this.cartId;
    data['cart_name'] = this.cartName;
    data['cart_price'] = this.cartPrice;
    data['cart_offers'] = this.cartOffers;
    data['cart_reating'] = this.cartReating;
    data['cart_love'] = this.cartLove;
    data['cart_details'] = this.cartDetails;
    data['cart_image'] = this.cartImage;
    data['cart_time'] = this.cartTime;
    data['cart_rela'] = this.cartRela;
    return data;
  }
}

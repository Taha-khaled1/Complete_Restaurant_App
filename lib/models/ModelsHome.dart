class ModelsHome {
  String? status;
  List<Cart>? cart;
  List<Foods>? foods;

  ModelsHome({this.status, this.cart, this.foods});

  ModelsHome.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['cart'] != null) {
      cart = <Cart>[];
      json['cart'].forEach((v) {
        cart!.add(new Cart.fromJson(v));
      });
    }
    if (json['foods'] != null) {
      foods = <Foods>[];
      json['foods'].forEach((v) {
        foods!.add(new Foods.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.cart != null) {
      data['cart'] = this.cart!.map((v) => v.toJson()).toList();
    }
    if (this.foods != null) {
      data['foods'] = this.foods!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cart {
  int? cartId;
  String? cartName;
  String? cartPrice;
  Null cartOffers;
  String? cartReating;
  String? cartLove;
  String? cartDetails;
  String? cartImage;
  String? cartTime;
  int? cartRela;

  Cart(
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

  Cart.fromJson(Map<String, dynamic> json) {
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

class Foods {
  int? foodsId;
  String? foodsName;
  String? foodsImages;
  String? foodsTime;
  int? offers;
  int? foodsRelation;
  String? foodsPrice;

  Foods(
      {this.foodsId,
      this.foodsName,
      this.foodsImages,
      this.foodsTime,
      this.offers,
      this.foodsRelation,
      this.foodsPrice});

  Foods.fromJson(Map<String, dynamic> json) {
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

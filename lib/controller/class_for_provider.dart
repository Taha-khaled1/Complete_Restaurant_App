import 'package:flutter/material.dart';
import 'package:restaurant/models/Foods.dart';
import '../main.dart';
import '../models/allprudect.dart';
import '../models/cart.dart';
import '../models/love.dart';
import 'Database/connctdatabase.dart';
import '../core/function/links.dart';

class screen extends ChangeNotifier {
  List<String> lis = [];
  Curd curd = Curd();
  bool x = false;
  int? numheart;
  Foofs? xc;
  cart? cartview;
  bool islooding = false;
  allprudect? Allprudects;
  love? lovee;
  fulllist() {
    lis.clear();
    for (var i = 0; i < xc!.data!.length; i++) {
      lis.add(xc!.data![i].foodsName.toString());
    }
  }

  viewlove() async {
    var respondfh = await curd.postrequest(
      viewlovee,
      {
        'love_userId': sigintorf.getString("id").toString(),
      },
    );
    lovee = love.fromJson(respondfh);
    print(lovee?.data?[0]);
    islooding = true;
    notifyListeners();
    return respondfh;
  }

  heatplus(c) {
    if (x == true) {
      numheart = c + 1;
    } else {
      numheart = c;
    }

    notifyListeners();
  }

  colorheart() {
    x = !x;
    print(x);
    notifyListeners();
  }

  updatenote(id, numlove) async {
    await curd.postrequest(
      editlove,
      {
        'cart_id': id.toString(),
        'cart_love': numlove.toString(),
      },
    );
  }

  logic(List<Datg>? poi) {
    if (Allprudects?.statues != null &&
        Allprudects?.statues != 'fall view' &&
        lovee?.statues != null &&
        lovee?.statues != 'fall view') {
      poi?.clear();
      for (int h = 0; h < lovee!.data!.length; h++) {
        for (int i = 0; i < Allprudects!.data!.length; i++) {
          print('Allprudects : ${Allprudects!.data![i].cartId.toString()}');
          print('love : ${lovee?.data?[h].loveFoodId.toString()}');
          if (lovee!.data![h].loveFoodId.toString() ==
              Allprudects!.data![i].cartId.toString()) {
            poi!.add(Allprudects!.data![i]);
            print(poi[h].cartName);
          }
        }
      }

      print('finish');
    }
  }
}

import 'package:get/get.dart';
import 'package:restaurant/models/cart.dart';
import 'package:restaurant/service/Gethomedata.dart';
import '../core/function/handling.dart';
import '../core/function/statusrequst.dart';

class Controllertypedetalis extends GetxController {
  late StatusRequest statusRequest;
  List? catogeris = [];
  cart? cartview;

  getdataType(x) async {
    statusRequest = StatusRequest.loading;
    var responss = await TypeGetdata(x);
    statusRequest = handlingData(responss);
    print("=============================== statusRequest $statusRequest");
    print(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['statues'].toString() == 'sucss') {
        cartview = cart.fromJson(responss);

        print('----------cartview------------');
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    return responss;
  }
}
//cartview = cart.fromJson(respondf);
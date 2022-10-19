import 'package:get/get.dart';
import '../core/function/handling.dart';
import '../core/function/statusrequst.dart';
import '../models/ModelsHome.dart';
import '../service/Gethomedata.dart';

class Homecontroller extends GetxController {
  late StatusRequest statusRequest;
  List? catogeris = [];
  ModelsHome? Data;

  getdataHome() async {
    statusRequest = StatusRequest.loading;
    var responss = await HomeGetdata();
    statusRequest = handlingData(responss);
    print("=============================== statusRequest $statusRequest");
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        Data = ModelsHome.fromJson(responss);
        print('-----------home----------');
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    return responss;
  }

  @override
  void onInit() {
    super.onInit();
    getdataHome();
  }
}

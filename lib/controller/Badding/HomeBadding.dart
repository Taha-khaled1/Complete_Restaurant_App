import 'package:get/get.dart';
import 'package:restaurant/controller/Homecontroller.dart';

import '../Controllertypedetalis.dart';

class myBadding extends Bindings {
  @override
  void dependencies() {
    Get.put(Homecontroller());
    Get.put(() => Controllertypedetalis(), permanent: true);
    // Get.put(Homecontroller());
  }
}

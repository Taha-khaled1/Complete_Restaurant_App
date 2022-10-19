import 'package:get/get.dart';

class Productcontroller extends GetxController {
  int numOfItems = 1;
  subnumOfItems() {
    if (numOfItems > 1) {
      numOfItems--;
      update();
    }
  }

  sumnumOfItems() {
    numOfItems++;
    update();
  }
}

import 'package:flutter/cupertino.dart';

import '../enums/device_type.dart';

class DeviceInfo {
  Orientation orientation;
  DeviceType deviceType;
  late double screenWidth;
  late double screenHeight;
  double localWidth;
  double localHeight;
  late double haighscreenonly;
  late double widthscreenonley;
  DeviceInfo(
      {required this.haighscreenonly,
      required this.widthscreenonley,
      required this.orientation,
      required this.deviceType,
      required this.screenWidth,
      required this.screenHeight,
      required this.localWidth,
      required this.localHeight});
}

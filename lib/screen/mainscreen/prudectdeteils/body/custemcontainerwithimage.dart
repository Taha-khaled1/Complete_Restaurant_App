import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';

class custemcontainerwithimage extends StatelessWidget {
  custemcontainerwithimage({required this.deviceInfo, required this.image});
  final DeviceInfo deviceInfo;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceInfo.localHeight * 0.4,
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        image: DecorationImage(
          image: NetworkImage(image.toString()),
          // image: AssetImage('assets/images/product/pro2.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

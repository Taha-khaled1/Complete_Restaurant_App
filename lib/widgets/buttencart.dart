import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../infoscreen/models/device_info.dart';

class buttencart extends StatelessWidget {
  buttencart({required this.deviceInfo});
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: deviceInfo.localHeight * 0.11,
      child: Container(
        height: 75,
        width: deviceInfo.screenWidth,
        margin: EdgeInsets.symmetric(horizontal: deviceInfo.localWidth * 0.017),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20 / 2,
        ),
        decoration: BoxDecoration(
          color: Colors.red[200],
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/product/chat.svg",
              height: 18,
            ),
            SizedBox(width: 20 / 2),
            Text(
              "Chat",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('order');
              },
              icon: SvgPicture.asset(
                "assets/images/product/shopping-bag.svg",
                height: 18,
              ),
              label: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

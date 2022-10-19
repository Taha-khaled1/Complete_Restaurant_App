import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';

class dliverytime extends StatelessWidget {
  dliverytime({required this.deviceInfo});
  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    var textstyel = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceInfo.localWidth * 0.03),
      child: SizedBox(
        height: deviceInfo.localHeight * 0.1428,
        width: deviceInfo.localWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Dellivery Time',
                  style: textstyel.headline5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_alarm,
                      color: Colors.red[300],
                    ),
                    Text(
                      ' 20-30 min     ',
                      style: textstyel.headline6,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    print(deviceInfo.orientation);
                  },
                  icon: Icon(
                    Icons.play_circle,
                    color: Color.fromARGB(255, 209, 190, 18),
                  ),
                ),
                Text(
                  'Watch Video',
                  style: textstyel.headline6,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

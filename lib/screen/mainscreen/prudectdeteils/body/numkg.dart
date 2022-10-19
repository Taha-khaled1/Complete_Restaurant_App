import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/controller/productcontroller.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';
import '../../../../widgets/buildOutlineButton.dart';

class numKg extends StatelessWidget {
  numKg({required this.deviceInfo});
  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceInfo.localHeight * 0.1,
      child: Padding(
        padding: EdgeInsets.only(top: deviceInfo.localHeight * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetBuilder<Productcontroller>(
              builder: (controller) {
                return Row(
                  children: [
                    buildOutlineButton(
                      icon: Icons.remove,
                      press: () {
                        controller.subnumOfItems();
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          controller.numOfItems.toString().padLeft(2, "0"),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Kg',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    buildOutlineButton(
                        icon: Icons.add,
                        press: () {
                          controller.sumnumOfItems();
                        }),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

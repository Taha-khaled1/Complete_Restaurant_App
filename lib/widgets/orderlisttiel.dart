import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';

import 'buildOutlineButton.dart';

// ignore: must_be_immutable
class orderlisttiel extends StatefulWidget {
  orderlisttiel({required this.deviceInfo, required this.numOfItems});
  final DeviceInfo deviceInfo;

  int numOfItems;
  @override
  State<orderlisttiel> createState() => _orderlisttielState();
}

class _orderlisttielState extends State<orderlisttiel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: widget.deviceInfo.localHeight * 0.1,
      width: widget.deviceInfo.localWidth,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          trailing: SizedBox(
            height: 70,
            width: widget.deviceInfo.localWidth * 0.2,
            child: Row(
              children: [
                buildOutlineButton(
                  icon: Icons.remove,
                  press: () {
                    if (widget.numOfItems > 1) {
                      setState(() {
                        widget.numOfItems--;
                      });
                    }
                  },
                ),
                Text(
                  widget.numOfItems.toString().padLeft(2, "0"),
                  style: Theme.of(context).textTheme.headline6,
                ),
                buildOutlineButton(
                    icon: Icons.add,
                    press: () {
                      setState(() {
                        widget.numOfItems++;
                      });
                    }),
              ],
            ),
          ),

          leading: Image.asset(
            'assets/images/category/cat1.png',
            fit: BoxFit.fill,
          ),
          title: Text(
            'homborger',
          ),
          subtitle: Text('price 300\$ '),
          // SvgPicture.asset('assets/images/category/cat1.png'),
        ),
      ),
    );
  }
}

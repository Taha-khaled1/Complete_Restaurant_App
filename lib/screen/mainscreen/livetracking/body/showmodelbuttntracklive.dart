import 'package:flutter/material.dart';

import '../../../../infoscreen/models/device_info.dart';

Future<void> showmodelbuttntracklive(
    BuildContext context, DeviceInfo deviceInfo, TextTheme textstyel) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: deviceInfo.screenHeight * 0.52,
        color: Colors.grey[200],
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.done,
                color: Colors.red[300],
                size: 150,
              ),
              Text(
                'Thank you For \nyour order',
                style: textstyel.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.red[300],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: Text(
                  'You can tracking the delivery in \nthe \'order\' down ',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                // alignment: Alignment.center,
                width: deviceInfo.screenWidth * 0.9,
                height: deviceInfo.screenHeight * 0.075,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red[300]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Cancel the Order ',
                    style: textstyel.headline6,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                //alignment: Alignment.center,
                width: deviceInfo.screenWidth * 0.9,
                height: deviceInfo.screenHeight * 0.075,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Cancel the Order ',
                    style: textstyel.headline6,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

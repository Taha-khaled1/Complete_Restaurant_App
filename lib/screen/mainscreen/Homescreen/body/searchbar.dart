import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';

class searchbar extends StatelessWidget {
  final DeviceInfo deviceInfo;
  searchbar({required this.deviceInfo});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: deviceInfo.screenHeight * 0.07,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[100],
            hintText: 'Search',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                size: 40,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
          ),
        ),
      ),
    );
  }
}

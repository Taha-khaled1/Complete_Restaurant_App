import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/function/links.dart';
import '../../prudectdeteils/prudectdetalis.dart';

class Itemcard extends StatelessWidget {
  final String imag;
  final String titel;
  final String subtitel;
  final String price;
  final double localhigh;
  Itemcard(
      {required this.localhigh,
      required this.imag,
      required this.subtitel,
      required this.titel,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(prudectdetalis(
          cartDetails: subtitel,
          cartImage: imag,
          cartName: titel,
        ));
      },
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 7, bottom: 7),
        height: localhigh * 0.55,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      '$imagerootcart/${imag}',
                      fit: BoxFit.fill,
                      height: 1000,
                      width: 1000,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titel.toString(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ' \$ ${price}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

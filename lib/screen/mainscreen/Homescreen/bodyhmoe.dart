// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/Controllertypedetalis.dart';
import '../../../controller/Homecontroller.dart';
import '../../../handlingView/handlingview.dart';
import '../../../infoscreen/ui_components/info_widget.dart';
import 'body/Itemcard.dart';
import 'body/catogerycard.dart';
import 'body/searchbar.dart';

class Bodyhome extends StatelessWidget {
  Bodyhome({Key? key}) : super(key: key);
  Controllertypedetalis controllertypedetalis =
      Get.put(Controllertypedetalis());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: deviceInfo.localHeight * 0.09,
                      child: RichText(
                        text: TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' Delivering to\n',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.grey)),
                            TextSpan(
                                text: 'current location',
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                searchbar(deviceInfo: deviceInfo),
                SizedBox(
                  height: deviceInfo.localHeight * 0.02,
                ),
                GetBuilder<Homecontroller>(
                  builder: (controller) {
                    return HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: Container(
                        height: 180,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.Data?.foods!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CategoryCard(
                              onTap: () {
                                controllertypedetalis.getdataType(
                                    controller.Data!.foods![index].foodsId);
                                Get.toNamed('typedetalis');
                              },
                              svgoricon: false,
                              deviceInfohagh: deviceInfo.localHeight,
                              deviceInfowidth: deviceInfo.localWidth,
                              svgSrc: controller.Data!.foods![index].foodsImages
                                  .toString(),
                              title: controller.Data!.foods![index].foodsName
                                  .toString(),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: deviceInfo.screenHeight * 0.01,
                ),
                GetBuilder<Homecontroller>(
                  builder: (controller) {
                    return HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: controller.Data?.cart!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Itemcard(
                            price: controller.Data!.cart![index].cartPrice
                                .toString(),
                            imag: controller.Data!.cart![index].cartImage
                                .toString(),
                            localhigh: deviceInfo.localHeight,
                            subtitel: controller.Data!.cart![index].cartDetails
                                .toString(),
                            titel: controller.Data!.cart![index].cartName
                                .toString(),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

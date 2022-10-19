// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/controller/Homecontroller.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';
import '../../controller/Controllertypedetalis.dart';
import '../../core/function/links.dart';

class menu extends GetView<Homecontroller> {
  Controllertypedetalis Controllertypedetali = Get.put(Controllertypedetalis());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: InfoWidget(builder: (context, deviceInfo) {
          return Container(
            height: deviceInfo.localHeight,
            width: deviceInfo.localWidth,
            child: Column(
              children: [
                SizedBox(
                  height: deviceInfo.localHeight * 0.88,
                  child: ListView.builder(
                    itemCount: controller.Data!.foods!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Controllertypedetali.getdataType(
                              controller.Data!.foods![index].foodsId);
                          Get.toNamed('typedetalis');
                        },
                        child: Container(
                          height: deviceInfo.localHeight * 0.1,
                          child: ListTile(
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back_ios_new)),
                            title: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '${controller.Data!.foods![index].foodsName}',
                                textAlign: TextAlign.start,
                              ),
                            ),
                            leading: SizedBox(
                              width: 50,
                              child: Image.network(
                                '$imageroot/${controller.Data!.foods![index].foodsImages}',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
      )),
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:restaurant/handlingView/handlingview.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';
import 'package:restaurant/models/cart.dart';
import '../../controller/Controllertypedetalis.dart';
import 'refctypedetalis.dart';

class typedetalis extends StatelessWidget {
  int selectedIndex = 0;
  List categories = ['All', 'Sofa', 'Park bench', 'Armchair'];
  bool x = false;
  List<Data>? prudect = cart().data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: InfoWidget(builder: (context, deviceInfo) {
            return Column(
              children: [
                Center(
                  child: Container(
                    height: deviceInfo.localHeight * 0.95,
                    child: Column(
                      children: [
                        Row(
                          children: [],
                        ),
                        GetBuilder<Controllertypedetalis>(
                          // init: Controllertypedetalis(),
                          builder: (controller) {
                            return HandlingDataView(
                              statusRequest: controller.statusRequest,
                              widget: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 10,
                                  ),
                                  child: SizedBox(
                                    child: ListView.builder(
                                      itemCount:
                                          controller.cartview?.data!.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return reftypeddetal(
                                          cartDetails: controller.cartview!
                                              .data![index].cartDetails
                                              .toString(),
                                          image: controller
                                              .cartview!.data![index].cartImage
                                              .toString(),
                                          name: controller
                                              .cartview!.data![index].cartName
                                              .toString(),
                                          price: controller
                                              .cartview!.data![index].cartPrice
                                              .toString(),
                                          reating: controller.cartview!
                                              .data![index].cartReating
                                              .toString(),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

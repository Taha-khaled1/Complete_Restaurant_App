import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';

import '../../../../controller/class_for_provider.dart';

class foodreating extends StatelessWidget {
  foodreating(
      {required this.deviceInfo, required this.index, required this.where});
  final DeviceInfo deviceInfo;
  final int where;
  final int index;
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceInfo.localWidth * 0.02),
      child: SizedBox(
        height: deviceInfo.localHeight * 0.062,
        child: Consumer<screen>(
          builder: (context, v, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        v.colorheart();
                        v.heatplus(
                          where == 1
                              ? int.parse(
                                  v.cartview!.data![index].cartLove.toString(),
                                )
                              : int.parse(
                                  v.Allprudects!.data![index].cartLove
                                      .toString(),
                                ),
                        );
                        v.updatenote(
                            where == 1
                                ? int.parse(
                                    v.cartview!.data![index].cartId.toString(),
                                  )
                                : int.parse(
                                    v.Allprudects!.data![index].cartId
                                        .toString(),
                                  ),
                            v.numheart);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: v.x ? Colors.red : Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      where == 1
                          ? '${v.numheart == null ? v.cartview!.data![index].cartLove.toString() : v.numheart}'
                          : '${v.numheart == null ? v.Allprudects!.data![index].cartLove.toString() : v.numheart}',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 235, 214, 31),
                      ),
                    ),
                    Text(
                      where == 1
                          ? '${v.cartview!.data![index].cartReating}'
                          : '${v.Allprudects!.data![index].cartReating}',
                      style: textstyel.headline6,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(2324 review)',
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

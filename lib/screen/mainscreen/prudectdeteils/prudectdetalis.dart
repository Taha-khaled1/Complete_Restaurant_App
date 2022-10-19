import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';
import '../../../core/function/links.dart';
import '../../../widgets/buttencart.dart';
import 'body/custemcontainerwithimage.dart';
import 'body/numkg.dart';
import 'body/watch&dliverytime.dart';

class prudectdetalis extends StatelessWidget {
  const prudectdetalis(
      {Key? key,
      required this.cartImage,
      required this.cartName,
      required this.cartDetails})
      : super(key: key);
  final String cartImage, cartName, cartDetails;
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                      height: deviceInfo.localHeight * 0.5,
                      child: Column(
                        children: [
                          custemcontainerwithimage(
                            image: '$imagerootcart/${cartImage}',
                            deviceInfo: deviceInfo,
                          ),
                          numKg(deviceInfo: deviceInfo),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceInfo.localHeight * 0.08,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceInfo.localWidth * 0.03,
                        ),
                        child: Text(
                          '${cartName}',
                          style: textstyel.headline4!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    // foodreating(
                    //     deviceInfo: deviceInfo, index: index, where: where),
                    SizedBox(
                      height: deviceInfo.localHeight * 0.004,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: deviceInfo.localHeight * 0.09,
                        width: deviceInfo.localWidth * 0.9,
                        child: Text('${cartDetails}'),
                      ),
                    ),
                    SizedBox(
                      height: deviceInfo.localHeight * 0.003,
                    ),
                    dliverytime(
                      deviceInfo: deviceInfo,
                    ),
                    SizedBox(
                      height: deviceInfo.localHeight * 0.005,
                    ),
                    buttencart(
                      deviceInfo: deviceInfo,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

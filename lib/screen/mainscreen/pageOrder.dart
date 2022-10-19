import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';
import '../../widgets/orderlisttiel.dart';

class order extends StatefulWidget {
  order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int numOfItems = 01;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            var textstyel = Theme.of(context).textTheme;
            return Container(
              height: deviceInfo.localHeight,
              width: deviceInfo.localWidth,
              child: Column(
                children: [
                  SizedBox(
                    height: deviceInfo.localHeight * 0.88,
                    child: ListView(
                      children: [
                        orderlisttiel(
                            deviceInfo: deviceInfo, numOfItems: numOfItems),
                        orderlisttiel(
                            deviceInfo: deviceInfo, numOfItems: numOfItems),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: deviceInfo.localHeight * 0.12,
                    child: Container(
                      height: 75,
                      width: deviceInfo.screenWidth,
                      margin: EdgeInsets.symmetric(
                          horizontal: deviceInfo.localWidth * 0.017),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 20 / 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20 / 2),
                          Text("Totel : ", style: textstyel.headline6),
                          Text(
                            "\$1022",
                            style: textstyel.headline6,
                          ),
                          Spacer(),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/product/shopping-bag.svg",
                              height: 18,
                            ),
                            label: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

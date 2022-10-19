import 'package:flutter/material.dart';

import 'package:page_indicator/page_indicator.dart';

import '../../infoscreen/ui_components/info_widget.dart';

class pageview extends StatefulWidget {
  pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  var mymar = [
    {
      'titel': 'Find the foods you love',
      'info':
          'The best foods you find in the application from here you can start',
      'image': 'assets/images/tip/tip1.png',
    },
    {
      'titel': 'Find the foods you love',
      'info':
          'The best foods you find in the application from here you can start',
      'image': 'assets/images/tip/tip2.png',
    },
    {
      'titel': 'Find the foods you love',
      'info':
          'The best foods you find in the application from here you can start',
      'image': 'assets/images/tip/tip3.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    var textstyel = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.7,
              child: InfoWidget(builder: (context, deviceInfo) {
                return PageIndicatorContainer(
                    indicatorSelectorColor: Colors.red,
                    indicatorColor: Colors.grey,
                    shape: IndicatorShape.circle(),
                    child: PageView.builder(
                      itemCount: mymar.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(mymar[index]['image'].toString()),
                              Column(
                                children: [
                                  Container(
                                    width: deviceInfo.localWidth * 0.7,
                                    child: Text(
                                      mymar[index]['titel'].toString(),
                                      style: textstyel.headline4,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: deviceInfo.localWidth * 0.7,
                                    child: Text(
                                      mymar[index]['info'].toString(),
                                      style: textstyel.headline6!.copyWith(
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    length: mymar.length);
              }),
            ),
            Expanded(
              child: Container(
                child: InfoWidget(
                  builder: (context, deviceInfo) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: deviceInfo.localWidth * 0.9,
                          height: deviceInfo.localHeight * 0.25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red[300]),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('Loginpage');
                            },
                            child: Text(
                              'Create account ',
                              style: textstyel.headline6,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: deviceInfo.localWidth * 0.9,
                          height: deviceInfo.localHeight * 0.25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.facebook_sharp,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'continue with facebook',
                                  style: textstyel.headline6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

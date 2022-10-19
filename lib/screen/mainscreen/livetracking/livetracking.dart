import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';
import '../../../core/constantmin/class_for_list.dart';
import 'body/appbartrackorder.dart';
import 'body/listtilecustom.dart';
import 'body/showmodelbuttntracklive.dart';
import 'body/timeline.dart';

class livetracking extends StatefulWidget {
  livetracking({Key? key}) : super(key: key);

  @override
  State<livetracking> createState() => _livetrackingState();
}

//order tracking
class _livetrackingState extends State<livetracking> {
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: Abbbartrackorder().appbar,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    'Estimate Delivery Time',
                    style: textstyel.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' 5:30 Pm ',
                    style: textstyel.headline4!.copyWith(
                      color: Colors.red[200],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 5, offset: Offset(0, 10)),
                        ],
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      width: double.infinity,
                      child: listtilecustom()),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemCount: Listconstant().timeline.length,
                        itemBuilder: (context, index) {
                          return timeline(
                            index: index,
                          );
                        },
                      ),
                    ),
                  ),
                  InfoWidget(
                    builder: (context, deviceInfo) {
                      return Container(
                        width: deviceInfo.screenWidth * 0.9,
                        height: deviceInfo.screenHeight * 0.075,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {
                            showmodelbuttntracklive(
                                context, deviceInfo, textstyel);
                          },
                          child: Text(
                            'Cancel the Order ',
                            style: textstyel.headline6,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

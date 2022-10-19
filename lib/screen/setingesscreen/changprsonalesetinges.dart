import 'package:flutter/material.dart';

import '../../core/function/functionvalidetor.dart';
import '../../infoscreen/ui_components/info_widget.dart';
import '../../widgets/textfeild.dart';

// ignore: must_be_immutable
class changeprofile extends StatelessWidget {
  String? changeusername, changeemail, phone;
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[300],
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: Text(
                        'change prsonal setinges',
                        style: textstyel.headline3!
                            .copyWith(color: Colors.red[300]),
                      ),
                    ),
                  ),
                ),
                InfoWidget(
                  builder: (context, deviceInfo) {
                    return Container(
                      height: deviceInfo.screenHeight * 0.38,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textfeild(
                            num: 0,
                            deviceInfo: deviceInfo.localWidth * 0.88,
                            valid: (x) {
                              return validetor(x!, 1, 30);
                            },
                            onsaved: (newValue) {
                              changeusername = newValue!;
                            },
                            titel: 'Username',
                          ),
                          textfeild(
                            num: 0,
                            deviceInfo: deviceInfo.localWidth * 0.88,
                            valid: (x) {
                              return validetor(x!, 1, 30);
                            },
                            onsaved: (newValue) {
                              changeemail = newValue!;
                            },
                            titel: 'Email',
                          ),
                          textfeild(
                            num: 0,
                            deviceInfo: deviceInfo.localWidth * 0.88,
                            valid: (x) {
                              return validetor(x!, 1, 30);
                            },
                            onsaved: (newValue) {
                              phone = newValue!;
                            },
                            titel: 'Phone',
                          ),
                        ],
                      ),
                    );
                  },
                ),
                InfoWidget(
                  builder: (context, deviceInfo) {
                    return Container(
                      //   alignment: Alignment.center,
                      width: deviceInfo.screenWidth * 0.9,
                      height: deviceInfo.screenHeight * 0.075,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[300]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('Homescreen');
                        },
                        child: Text(
                          ' Change ',
                          style: textstyel.headline6,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: SizedBox(
                //     height: MediaQuery.of(context).size.height * 0.08,
                //     child: Text(
                //       'by clicking sign up you agree to the our terms and conditions',
                //       style: textstyel.headline6,
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.1,
                // ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Text(
                //         'Already an Account',
                //         style: textstyel.headline6,
                //       ),
                //       TextButton(
                //           onPressed: () {
                //             Navigator.of(context).pushNamed('sigin');
                //           },
                //           child: Text(
                //             'Sigin',
                //             style: textstyel.headline6!
                //                 .copyWith(color: Colors.red),
                //           ))
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import '../../core/function/functionvalidetor.dart';
import '../../infoscreen/ui_components/info_widget.dart';
import '../../widgets/textfeild.dart';

// ignore: must_be_immutable
class changepass extends StatelessWidget {
  String? currentpassword, NewPassword, Confirmpassword;

  @override
  Widget build(BuildContext context) {
    var textstyel = Theme.of(context).textTheme;
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
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: Text(
                      'change password',
                      style:
                          textstyel.headline3!.copyWith(color: Colors.red[300]),
                    ),
                  ),
                ),
              ),
              InfoWidget(
                builder: (context, deviceInfo) {
                  return Container(
                    height: deviceInfo.screenHeight * 0.35,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: deviceInfo.screenHeight * 0.04,
                        ),
                        textfeild(
                          deviceInfo: deviceInfo.localWidth * 0.88,
                          valid: (x) {
                            return validetor(x!, 8, 40);
                          },
                          onsaved: (newValue) {
                            currentpassword = newValue!;
                          },
                          titel: 'current password',
                          num: 0,
                        ),
                        SizedBox(
                          height: deviceInfo.screenHeight * 0.02,
                        ),
                        textfeild(
                          deviceInfo: deviceInfo.localWidth * 0.88,
                          valid: (x) {
                            return validetor(x!, 1, 30);
                          },
                          onsaved: (newValue) {
                            NewPassword = newValue!;
                          },
                          titel: ' New Password ',
                          num: 0,
                        ),
                        SizedBox(
                          height: deviceInfo.screenHeight * 0.02,
                        ),
                        textfeild(
                          deviceInfo: deviceInfo.localWidth * 0.88,
                          valid: (x) {
                            return validetor(x!, 1, 30);
                          },
                          onsaved: (newValue) {
                            Confirmpassword = newValue!;
                          },
                          titel: ' Confirm password ',
                          num: 0,
                        ),
                      ],
                    ),
                  );
                },
              ),

              InfoWidget(
                builder: (context, deviceInfo) {
                  return Container(
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
                      onPressed: () {},
                      child: Text(
                        'Change',
                        style: textstyel.headline6,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
              ),
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
              //           onPressed: () {},
              //           child: Text(
              //             'Login',
              //             style:
              //                 textstyel.headline6!.copyWith(color: Colors.red),
              //           ))
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

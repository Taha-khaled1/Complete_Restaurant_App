import 'package:flutter/material.dart';

import '../../core/function/functionvalidetor.dart';
import '../../infoscreen/ui_components/info_widget.dart';
import '../../widgets/textfeild.dart';

// ignore: must_be_immutable
class newpassword extends StatelessWidget {
  String? newpass;
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
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: Text(
                      'Forget password',
                      style:
                          textstyel.headline3!.copyWith(color: Colors.red[300]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: Text(
                      'Please enter youer Email to receive a link \nto create a newpassword via Email',
                      style: textstyel.headline5!
                          .copyWith(color: Colors.grey[600]),
                    ),
                  ),
                ),
              ),
              InfoWidget(
                builder: (context, deviceInfo) {
                  return Container(
                    height: deviceInfo.screenHeight * 0.15,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: deviceInfo.screenHeight * 0.04,
                        ),
                        textfeild(
                          valid: (x) {
                            return validetor(x!, 8, 40);
                          },
                          onsaved: (newValue) {
                            newpass = newValue!;
                          },
                          deviceInfo: deviceInfo.localWidth * 0.88,
                          titel: 'Email',
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
                        'Send',
                        style: textstyel.headline6,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already an Account',
                      style: textstyel.headline6,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style:
                              textstyel.headline6!.copyWith(color: Colors.red),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

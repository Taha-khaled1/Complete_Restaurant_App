import 'package:flutter/material.dart';

import '../../controller/Database/connctdatabase.dart';
import '../../core/function/functionvalidetor.dart';
import '../../core/function/links.dart';
import '../../infoscreen/ui_components/info_widget.dart';
import '../../main.dart';
import '../../widgets/textfeild.dart';

// ignore: must_be_immutable
class sigin extends StatelessWidget {
  String? emailsigin, passwordsigin;
  Curd curd = Curd();
  final GlobalKey<FormState> formkeysigin = GlobalKey();
  authsigin() async {
    if (formkeysigin.currentState!.validate()) {
      formkeysigin.currentState!.save();
      var xc = await curd.postrequest(linksigin, {
        'user_email': '$emailsigin',
        'user_password': '$passwordsigin',
      });
      if (xc['statues'] == 'faill') {
        print('#failed#');
      } else {
        sigintorf.setString('id', xc['data']['user_id'].toString());
        sigintorf.setString('email', xc['data']['user_email'].toString());
        sigintorf.setString('active', xc['data']['active'].toString());
        sigintorf.setString('password', xc['data']['user_password'].toString());
        print(xc['data']);
        print(xc['data']['active'].toString());
        print(sigintorf.getString('active'));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var textstyel = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: Form(
        key: formkeysigin,
        child: Container(
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
                        'Log in to your \nAccount',
                        style: textstyel.headline3!
                            .copyWith(color: Colors.red[300]),
                      ),
                    ),
                  ),
                ),
                InfoWidget(
                  builder: (context, deviceInfo) {
                    return Container(
                      height: deviceInfo.screenHeight * 0.25,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(
                            height: deviceInfo.screenHeight * 0.04,
                          ),
                          textfeild(
                            deviceInfo: deviceInfo.localWidth * 0.88,
                            valid: (x) {
                              return validetor(x!, 4, 40);
                            },
                            onsaved: (newValue) {
                              emailsigin = newValue!;
                            },
                            titel: 'Email',
                            num: 0,
                          ),
                          SizedBox(
                            height: deviceInfo.screenHeight * 0.02,
                          ),
                          textfeild(
                            deviceInfo: deviceInfo.localWidth * 0.88,
                            valid: (x) {
                              return validetor(x!, 8, 40);
                            },
                            onsaved: (newValue) {
                              passwordsigin = newValue!;
                            },
                            titel: 'Password',
                            num: 1,
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
                        onPressed: () async {
                          await authsigin();
                          if (sigintorf.getString('id') != null) {
                            Navigator.of(context).pushNamed('Homescreen');
                          } else {
                            print('###field##');
                          }
                        },
                        child: Text(
                          'sigin in',
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
                            style: textstyel.headline6!
                                .copyWith(color: Colors.red),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../controller/Database/connctdatabase.dart';
import '../../core/function/functionvalidetor.dart';
import '../../core/function/links.dart';
import '../../infoscreen/ui_components/info_widget.dart';
import '../../main.dart';
import '../../widgets/textfeild.dart';

// ignore: must_be_immutable
class Loginpage extends StatelessWidget {
  String? username, password, email, phone;
  Curd curd = Curd();
  final GlobalKey<FormState> formkeylogin = GlobalKey();
  authlogin() async {
    if (formkeylogin.currentState!.validate()) {
      formkeylogin.currentState!.save();
      await curd.postrequest(linklogin, {
        'user_username': '$username',
        'user_email': '$email',
        'user_password': '$password',
        'user_datatime': DateTime.now().toString(),
      });
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
          key: formkeylogin,
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
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: Text(
                          'Create your \nAccount',
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
                                return validetor(x!, 4, 40);
                              },
                              onsaved: (newValue) {
                                username = newValue!;
                              },
                              titel: 'Username',
                            ),
                            textfeild(
                              valid: (x) {
                                return validetor(x!, 4, 40);
                              },
                              onsaved: (newValue) {
                                email = newValue!;
                              },
                              num: 0,
                              deviceInfo: deviceInfo.localWidth * 0.88,
                              titel: 'Email',
                            ),
                            textfeild(
                              num: 0,
                              deviceInfo: deviceInfo.localWidth * 0.88,
                              titel: 'Password',
                              valid: (x) {
                                return validetor(x!, 8, 40);
                              },
                              onsaved: (newValue) {
                                password = newValue!;
                              },
                            ),
                            textfeild(
                              valid: (x) {
                                return validetor(x!, 1, 30);
                              },
                              onsaved: (newValue) {
                                phone = newValue!;
                              },
                              num: 0,
                              deviceInfo: deviceInfo.localWidth * 0.88,
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            await authlogin();
                            if (sigintorf.getString('id') != null) {
                              Navigator.of(context).pushNamed('Homescreen');
                            } else {
                              print('#field###');
                            }
                          },
                          child: Text(
                            'Create account ',
                            style: textstyel.headline6,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Text(
                        'by clicking sign up you agree to the our terms and conditions',
                        style: textstyel.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
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
                            onPressed: () {
                              Navigator.of(context).pushNamed('sigin');
                            },
                            child: Text(
                              'Sigin',
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
        ));
  }
}

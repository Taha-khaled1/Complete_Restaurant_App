import 'package:flutter/material.dart';
import '../../infoscreen/ui_components/info_widget.dart';

class Getsatrt extends StatelessWidget {
  const Getsatrt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textstyel = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: InfoWidget(
        builder: (context, deviceInfo) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/tip/tip0.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                width: double.infinity,
                height: deviceInfo.localHeight * 0.7,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: deviceInfo.localWidth * 0.12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Happey Meals',
                          style: textstyel.displaySmall!
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Discover the best foods \nfrom Over 1,000 restaurant',
                          style: textstyel.headline6!,
                        ),
                        Container(
                          width: 230,
                          height: 65,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(143, 148, 251, 1),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('pageview');
                            },
                            child: Text(
                              'Get Start',
                              style: textstyel.headline6,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      )),
    );
  }
}

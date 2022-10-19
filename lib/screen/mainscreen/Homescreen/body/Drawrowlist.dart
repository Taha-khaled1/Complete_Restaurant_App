import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../controller/class_for_provider.dart';
import '../../../../main.dart';
import '../../favorit.dart';
import 'drawrow.dart';

class Drawroww extends StatelessWidget {
  const Drawroww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen prov = context.watch<screen>();
    TextTheme textstyel = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(
          height: 7,
        ),
        ExpansionTile(
          title: Text(
            'Profile  ',
            style: textstyel.bodyLarge,
          ),
          children: [
            DrawRow(
                text: 'prasonal settings',
                press: () {
                  Navigator.of(context).pushNamed('changeprofile');
                }),
            SizedBox(
              height: 13,
            ),
            DrawRow(
                text: 'change Password',
                press: () {
                  Navigator.of(context).pushNamed('changepass');
                }),
          ],
        ),
        DrawRow(
            text: 'Homepage',
            press: () {
              //Navigator.of(context).pushNamed('livetracking');
            }),
        DrawRow(
            text: 'Menu',
            press: () {
              Navigator.of(context).pushNamed('menu');
            }),
        DrawRow(
            text: 'Favourit',
            press: () {
              prov.viewlove();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => favorit(prov: prov),
              ));
              // Navigator.of(context).pushNamed('favorit');
            }),
        DrawRow(text: 'My Order', press: () {}),
        DrawRow(text: 'About Us', press: () {}),
        DrawRow(text: 'Suppert center', press: () {}),
        DrawRow(
            text: 'SinginOut',
            press: () {
              sigintorf.clear();
              Navigator.of(context).pushNamed('Getsatrt');
            }),
      ],
    );
  }
}

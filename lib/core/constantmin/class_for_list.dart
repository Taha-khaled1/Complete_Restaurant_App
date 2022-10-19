import 'package:flutter/material.dart';
import 'package:restaurant/models/drawermodel.dart';

class Listconstant {
  List<String> timeline = [
    'Order Confirmed',
    'Preparing Your Order',
    'Order is Ready At the Restaurant',
    'Rider is Picking Up your Order',
    'Rider is Nearby your Place',
  ];
  double lineXY = 0.21;

  List<dashboardlist> dashbor = [
    dashboardlist(
      ico: Icons.person,
      titel: 'View Users',
      function: (ctxx) {
        Navigator.of(ctxx).pushNamed('useraccount');
      },
    ),
    dashboardlist(
      ico: Icons.fastfood,
      titel: 'View foods',
      function: (ctxx) {
        Navigator.of(ctxx).pushNamed('Viewfoods');
      },
    ),
    dashboardlist(
      ico: Icons.emoji_food_beverage,
      titel: 'View prudect',
      function: (ctxx) {
        Navigator.of(ctxx).pushNamed('viewcart');
      },
    ),
  ];
}

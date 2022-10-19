import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'body/Drawrowlist.dart';
import 'bodyhmoe.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          width: 400,
          child: SingleChildScrollView(child: Drawroww()),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: Bodyhome(),
    );
  }
}

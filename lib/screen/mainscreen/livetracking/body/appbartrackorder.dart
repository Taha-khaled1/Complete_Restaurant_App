import 'package:flutter/material.dart';

class Abbbartrackorder {
  PreferredSizeWidget appbar = AppBar(
    elevation: 0,
    backgroundColor: Colors.grey[200],
    title: Text('track your order',
        style: TextStyle(fontSize: 24, color: Colors.black)),
    centerTitle: true,
    actions: [
      TextButton.icon(
        onPressed: () {},
        label: Text(
          'Chate',
          style: TextStyle(color: Colors.red[200]),
        ),
        icon: Icon(
          Icons.chat_bubble,
          color: Colors.red[200],
        ),
      )
    ],
  );
}

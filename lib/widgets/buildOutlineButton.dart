import 'package:flutter/material.dart';

class buildOutlineButton extends StatelessWidget {
  buildOutlineButton({required this.icon, required this.press});
  final IconData icon;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}

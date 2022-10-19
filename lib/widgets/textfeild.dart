import 'package:flutter/material.dart';

class textfeild extends StatelessWidget {
  final double deviceInfo;
  final String titel;
  final void Function(String?)? onsaved;
  final int num;
  final String? Function(String?)? valid;
  const textfeild(
      {required this.valid,
      required this.onsaved,
      required this.num,
      required this.deviceInfo,
      required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceInfo,
      child: TextFormField(
        onSaved: onsaved,
        validator: valid,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            suffixIcon: num == 1
                ? TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('newpassword');
                    },
                    child: Text(
                      'Forrrrg?',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : null,
            label: Text(titel),
            // hintText: 'enter here',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.5),
              borderRadius: BorderRadius.circular(18),
            )),
      ),
    );
  }
}

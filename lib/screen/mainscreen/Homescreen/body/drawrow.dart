import 'package:flutter/material.dart';

class DrawRow extends StatelessWidget {
  DrawRow({required this.press, required this.text});
  final String text;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: press,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: textstyel.headlineSmall,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 35, top: 2, bottom: 2),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class listtilecustom extends StatelessWidget {
  const listtilecustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/product/person.jpg',
          fit: BoxFit.fill,
          height: 500,
          width: 140,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Rider'),
            Text(
              'Jason Stroll',
              style: textstyel.headline6,
            ),
          ],
        ),
        SizedBox(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 235, 214, 31),
                  // size: 40,
                ),
              ),
              Text(
                '4.8',
                style: textstyel.headline6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

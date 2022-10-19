import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/function/links.dart';
import '../mainscreen/prudectdeteils/prudectdetalis.dart';

class reftypeddetal extends StatelessWidget {
  reftypeddetal({
    required this.image,
    required this.name,
    required this.price,
    required this.reating,
    required this.cartDetails,
  });

  final String name, image, price, reating, cartDetails;

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
      child: InkWell(
        onTap: () {
          Get.to(prudectdetalis(
            cartDetails: cartDetails,
            cartImage: image,
            cartName: name,
          ));
        },
        child: Container(
          height: 140,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  isThreeLine: true,
                  trailing: SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () async {},
                              icon: Icon(
                                Icons.favorite,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 9),
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                      style: textstyel.headline6,
                    ),
                  ),
                  leading: SizedBox(
                    width: 50,
                    child: Image.network(
                      '$imagerootcart/${image}',
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Cafe : price Food \$ ${price}'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 235, 214, 31),
                                // size: 40,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${reating}',
                                // style: textstyel.headline6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '( 278 review)',
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text('Ofeers'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

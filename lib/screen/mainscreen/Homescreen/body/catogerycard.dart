import 'package:flutter/material.dart';
import 'package:restaurant/core/function/links.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';

class CategoryCard extends StatelessWidget {
  final String? svgSrc;
  final String title;
  final double deviceInfowidth;
  final double deviceInfohagh;
  final IconData? icon;
  final bool? svgoricon;
  final void Function()? onTap;

  CategoryCard({
    required this.onTap,
    this.icon,
    required this.svgoricon,
    required this.deviceInfohagh,
    required this.deviceInfowidth,
    this.svgSrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 5),
              child: Container(
                width: deviceInfowidth * 0.33,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 17),
                      blurRadius: 17,
                      spreadRadius: -23,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTap,
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        svgoricon == false
                            ? SizedBox(
                                width: deviceInfo.localWidth,
                                height: deviceInfo.localHeight * 0.65,
                                child: Image.network(
                                  '$imageroot/${svgSrc!}',
                                  fit: BoxFit.contain,
                                ),
                              )
                            : Icon(
                                icon!,
                                size: 100,
                                color: Colors.green[400],
                              ),
                        Spacer(),
                        SizedBox(
                          height: deviceInfo.localHeight * 0.190,
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontSize: 15),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

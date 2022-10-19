import 'package:flutter/material.dart';
import 'package:restaurant/infoscreen/models/device_info.dart';
import '../controller/class_for_provider.dart';
import '../core/function/links.dart';
import '../models/allprudect.dart';

// ignore: must_be_immutable
class Templetvaforit extends StatefulWidget {
  Templetvaforit(
      {required this.deviceInfo,
      required this.index,
      required this.prov,
      required this.poi});
  final int index;
  final DeviceInfo deviceInfo;
  final screen prov;
  List<Datg> poi = [];
  @override
  State<Templetvaforit> createState() => _TempletvaforitState();
}

class _TempletvaforitState extends State<Templetvaforit> {
  @override
  Widget build(BuildContext context) {
    return widget.poi == []
        ? Center(
            child: Text('.......Isloding'),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 5),
              child: Container(
                width: widget.deviceInfo.localWidth * 0.33,
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
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          Image.network(
                            '$imagerootcart/${widget.poi[widget.index].cartImage}',
                          ),
                          Spacer(),
                          Text(
                            widget.poi[widget.index].cartName.toString(),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontSize: 15),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                  'Price : \$ ${widget.poi[widget.index].cartPrice.toString().substring(0, 2)}'),
                              Text(
                                  'Reating : ${widget.poi[widget.index].cartReating.toString()}'),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

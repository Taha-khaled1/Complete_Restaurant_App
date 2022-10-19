import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../../../core/constantmin/class_for_list.dart';

class timeline extends StatelessWidget {
  timeline({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      height: 85,
      child: TimelineTile(
        indicatorStyle: IndicatorStyle(height: 1),
        lineXY: Listconstant().lineXY,
        axis: TimelineAxis.vertical,
        alignment: TimelineAlign.manual,
        endChild: Container(
          margin: EdgeInsets.only(left: 20),
          height: 500,
          child: Row(
            children: [
              Text(
                Listconstant().timeline[index],
                style: textstyel.headline5,
              ),
            ],
          ),
          constraints: const BoxConstraints(
            minWidth: 120,
          ),
        ),
        startChild: Container(),
      ),
    );
  }
}

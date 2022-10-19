import 'package:flutter/material.dart';
import '../core/function/statusrequst.dart';
import 'widgets/404Error.dart';
import 'widgets/NoConnection.dart';
import 'widgets/SomethingWrong.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Text('.....Islooding'),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? NoConnectionScreen()
            : statusRequest == StatusRequest.serverfailure
                ? Error404Screen()
                : statusRequest == StatusRequest.failure
                    ? SomethingWrongScreen()
                    : widget;
  }
}

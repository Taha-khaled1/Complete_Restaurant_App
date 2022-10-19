import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/infoscreen/ui_components/info_widget.dart';
import '../../controller/class_for_provider.dart';
import '../../models/allprudect.dart';
import '../../widgets/templetfavorit.dart';

class favorit extends StatefulWidget {
  favorit({required this.prov});
  final screen prov;
  @override
  State<favorit> createState() => _favoritState();
}

class _favoritState extends State<favorit> {
  List<Datg>? poi = [];
  @override
  @override
  Widget build(BuildContext context) {
    screen prov = context.watch<screen>();
    prov.logic(poi);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: poi == null || poi == [] || poi!.isEmpty
          ? Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.white,
                size: 120,
              ),
            )
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: InfoWidget(builder: (context, deviceInfo) {
                    return Expanded(
                      child: Container(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 8 / 9,
                          ),
                          itemCount: poi!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Templetvaforit(
                              poi: poi!,
                              prov: prov,
                              deviceInfo: deviceInfo,
                              index: index,
                            );
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
    );
  }
}

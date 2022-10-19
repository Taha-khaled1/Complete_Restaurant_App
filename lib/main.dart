import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/controller/Badding/HomeBadding.dart';
import 'package:restaurant/core/constantmin/routs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/class_for_provider.dart';
import 'screen/pagestart/getstart.dart';
import 'screen/mainscreen/Homescreen/Homescreen.dart';

late SharedPreferences sigintorf;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sigintorf = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<screen>(
          create: (context) => screen(),
        ),
      ],
      child: GetMaterialApp(
        initialBinding: myBadding(),
        debugShowCheckedModeBanner: false,
        getPages: getPage,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        home: sigintorf.getString("id") == null ? Getsatrt() : Homescreen(),
      ),
    );
  }
}

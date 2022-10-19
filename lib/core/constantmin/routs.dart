import 'package:get/get.dart';
import '../../controller/Badding/HomeBadding.dart';
import '../../screen/login&sigin/login.dart';
import '../../screen/login&sigin/newpassword.dart';
import '../../screen/login&sigin/sigin.dart';
import '../../screen/mainscreen/Homescreen/Homescreen.dart';
import '../../screen/mainscreen/livetracking/livetracking.dart';
import '../../screen/mainscreen/pageOrder.dart';
import '../../screen/menue/menu.dart';
import '../../screen/menue/typedetails.dart';
import '../../screen/pagestart/getstart.dart';
import '../../screen/pagestart/pageview.dart';
import '../../screen/setingesscreen/changepassword.dart';
import '../../screen/setingesscreen/changprsonalesetinges.dart';

List<GetPage<dynamic>>? getPage = [
  GetPage(name: '/', page: () => Getsatrt()),
  GetPage(name: '/pageview', page: () => pageview()),
  GetPage(name: '/Loginpage', page: () => Loginpage()),
  GetPage(name: '/newpassword', page: () => newpassword()),
  GetPage(name: '/sigin', page: () => sigin()),
  GetPage(name: '/Homescreen', page: () => Homescreen(), binding: myBadding()),
  GetPage(name: '/order', page: () => order()),
  // GetPage(name: '/prudectdetalis', page: () => prudectdetalis()),
  GetPage(name: '/changepass', page: () => changepass()),
  GetPage(name: '/changeprofile', page: () => changeprofile()),
//
  GetPage(name: '/menu', page: () => menu()),
  GetPage(name: '/typedetalis', page: () => typedetalis()),
//   GetPage(name: '/dashboard', page: () => dashboard()),
//   GetPage(name: '/useraccount', page: () => useraccount()),
// //
//   GetPage(name: '/adduser', page: () => adduser()),
//   GetPage(name: '/Addfoods', page: () => Addfoods()),
//   GetPage(name: '/Viewfoods', page: () => Viewfoods()),
//   GetPage(name: '/Addeats', page: () => Addeats()),
//   GetPage(name: '/viewcart', page: () => viewcart()),
  GetPage(name: '/livetracking', page: () => livetracking()),
//GetPage(name:'seetinges' ,page: () =>seetinges()),
//GetPage(name:'favorit' ,page: () =>favorit()),
];

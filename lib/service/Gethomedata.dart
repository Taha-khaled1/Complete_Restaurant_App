import 'package:restaurant/controller/Database/connctdatabase.dart';
import 'package:restaurant/core/function/links.dart';

HomeGetdata() async {
  Curd curd = Curd();
  var respondf = await curd.postrequest(
    Homedata,
    {},
  );
  print(respondf);
  return respondf;
}

TypeGetdata(namecart) async {
  Curd curd = Curd();

  var respondf = await curd.postrequest(
    viewcarts,
    {
      'cart_rela': namecart.toString(),
    },
  );
  return respondf;
}

import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:path/path.dart';
import '../../core/function/checkenternet.dart';
import '../../core/function/statusrequst.dart';

String _basicAuth = 'Basic ' + base64Encode(utf8.encode('wael:wael1'));

Map<String, String> myheaders = {'authorization': _basicAuth};

class Curd {
  getrequest(String url) async {
    try {
      var respos = await http.get(Uri.parse(url));
      if (respos.statusCode == 200) {
        var body = jsonDecode(respos.body);
        return body;
      } else {
        print(' Error ${respos.statusCode}');
      }
    } catch (e) {
      print(' Error ${e}');
    }
  }

  postrequest(String url, Map data) async {
    try {
      if (await checkInternet()) {
        var respos =
            await http.post(Uri.parse(url), body: data, headers: myheaders);
        if (respos.statusCode == 200) {
          var body = jsonDecode(respos.body);
          return body;
        } else {
          print(' Error ${respos.statusCode}');
          return StatusRequest.serverfailure;
        }
      } else {
        return StatusRequest.offlinefailure;
      }
    } catch (e) {
      print(' Error $e ');
      return StatusRequest.serverfailure;
    }
  }

  strequestforFile(
    String url,
    namepost,
    Map data,
    File file,
  ) async {
    var requst = http.MultipartRequest('Post', Uri.parse(url));
    var length = await file.length();
    var stream = http.ByteStream(file.openRead());
    var multefile = http.MultipartFile(namepost, stream, length,
        filename: basename(file.path));
    requst.headers.addAll(myheaders);
    requst.files.add(multefile);
    data.forEach((key, value) {
      requst.fields[key] = value;
    });
    var myrequest = await requst.send();
    var response = await http.Response.fromStream(myrequest);
    if (myrequest.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Erorr');
    }
  }
}

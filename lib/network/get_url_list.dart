import 'dart:convert';
import 'package:http/http.dart' as http;

class GetUrlList {
  static List<String> picsum() {
    List<String> urlList = [];
    for (var i = 100; i < 105; i++) {
      urlList.add('https://picsum.photos/seed/$i/800/400');
    }

    return urlList;
  }

  static Future<List<String>> theta() async {
    List<String> urlList = [];

    print('getting url from THETA');

    // first get list of files with information on each file
    Uri uri = Uri.http('192.168.1.1', '/osc/commands/execute');
    var body = {
      'name': 'camera.listFiles',
      'parameters': {
        'fileType': 'image',
        'entryCount': 5,
        'maxThumbSize': 0,
      }
    };
    var headers = {'Content-Type': 'application/json;charset=utf-8'};
    var response =
        await http.post(uri, headers: headers, body: jsonEncode(body));
    var fileMap = jsonDecode(response.body);
    var entriesList = fileMap['results']['entries'];
    for (var entry in entriesList) {
      urlList.add(entry['fileUrl']);
    }

    return urlList;
  }
}

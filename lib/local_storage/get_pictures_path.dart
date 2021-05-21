import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> getPicturesPath() async {
  Directory docDir = await getApplicationDocumentsDirectory();
  var pathList = docDir.path.split('\\');
  pathList[pathList.length - 1] = 'Pictures';
  var picturePath = pathList.join('\\');
  print(picturePath);
  return picturePath;
}

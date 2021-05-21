import 'package:http/http.dart' as http;
import 'package:image_download_tutorial/local_storage/save_image.dart';

void downloadImages(List<String> urlList, Function updateStatus) async {
  var counter = 1;
  for (String url in urlList) {
    Uri uri = Uri.parse(url);
    final imageData = await http.get(uri);
    print('saving image $counter');
    saveImage(imageData, '$counter.jpg');
    updateStatus('saved image $counter.jpg');

    counter++;
  }
}

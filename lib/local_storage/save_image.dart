import 'dart:io';

import 'package:image_download_tutorial/local_storage/get_pictures_path.dart';
import 'package:path/path.dart';

void saveImage(imageData, String imageName) async {
  var picturesPath = await getPicturesPath();
  var thetaImage = await File(join(picturesPath, 'theta_images', imageName))
      .create(recursive: true);
  await thetaImage.writeAsBytes(imageData.bodyBytes);
}

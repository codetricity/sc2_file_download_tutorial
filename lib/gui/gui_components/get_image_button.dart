import 'package:flutter/material.dart';
import 'package:image_download_tutorial/local_storage/get_pictures_path.dart';
import 'package:image_download_tutorial/network/download_images.dart';
import 'package:image_download_tutorial/network/get_url_list.dart';
import 'package:image_download_tutorial/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';

class GetImageButton extends StatelessWidget {
  const GetImageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function updateStatus = (message) {
      context.read<ResponseNotifier>().updateResponseWidget(
            Text(
              message,
              style: TextStyle(fontSize: 30),
            ),
          );
    };

    return TextButton(
      child: Text('Get Images'),
      onPressed: () async {
        context.read<ResponseNotifier>().updateResponseWidget(
              CircularProgressIndicator(),
            );
        // find windows local storage directory
        String picturePath = await getPicturesPath();
        print('picture path is $picturePath');
        var urlList = await GetUrlList.theta();
        // var urlList = GetUrlList.picsum();
        // print(urlList);
        downloadImages(urlList, updateStatus);
      },
    );
  }
}

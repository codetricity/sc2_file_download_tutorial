import 'package:flutter/material.dart';
import 'package:image_download_tutorial/gui/gui_components/get_image_button.dart';

class ButtonWindow extends StatelessWidget {
  const ButtonWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: GetImageButton(),
      ),
    );
  }
}

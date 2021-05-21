import 'package:flutter/material.dart';
import 'package:image_download_tutorial/gui/gui_sections/response_window.dart';
import 'button_window.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ButtonWindow(),
          ResponseWindow(),
        ],
      ),
    );
  }
}

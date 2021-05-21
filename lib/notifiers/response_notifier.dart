import 'package:flutter/material.dart';

class ResponseNotifier extends ChangeNotifier {
  Widget _responseWidget = Text('status window');

  // getter
  Widget get responseWidget => _responseWidget;

  // setter
  void updateResponseWidget(responseWidget) {
    _responseWidget = responseWidget;
    notifyListeners();
  }
}

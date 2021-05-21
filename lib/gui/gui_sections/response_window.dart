import 'package:flutter/material.dart';
import 'package:image_download_tutorial/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';

class ResponseWindow extends StatelessWidget {
  const ResponseWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Colors.lightBlue[100],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: context.watch<ResponseNotifier>().responseWidget,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'gui/gui_sections/home_screen.dart';
import 'notifiers/response_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ResponseNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:panpanpan/firstScreen/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Panorama',
      theme: ThemeData.dark(),
      home: FirstScreen(title: 'Flutter Panorama'),
    );
  }
}

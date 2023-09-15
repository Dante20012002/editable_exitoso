import 'package:flutter/material.dart';
import 'package:editable/views/screens/home/home.dart';
import 'package:editable/views/styles/general_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      title: 'Flutter Demo',
      home: Home()
    );
  }
}

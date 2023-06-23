import 'package:flutter/material.dart';
import 'package:weather2023/view/home_page.dart';
//import 'package:wheather01/screens/main_screen.dart';
//import 'package:wheather01/screens/ornek.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

import 'package:flutter/material.dart';


import 'homePage.dart';

void  main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: homePage(),
      home: homePage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

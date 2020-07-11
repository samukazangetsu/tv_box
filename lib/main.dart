import 'package:flutter/material.dart';
import 'package:tvbox/Homepage.dart';
import 'package:tvbox/PagePlans.dart';
import 'package:tvbox/cardwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/teste': (context) => CardWidget(),
        },
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

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
          '/page-plans': (context) => PagePlans(),
        },
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

// "redirects": [
//     {
//       "source": "/teste",
//       "destionation": "/teste",
//       "type": 301
//     },
//     {
//       "source": "/page-plans",
//       "destionation": "/page-plans",
//       "type": 301
//     }
//   ],

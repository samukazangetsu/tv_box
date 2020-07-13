import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/Card-Pages/fail.dart';
import 'package:tvbox/Card-Pages/pending.dart';
import 'package:tvbox/Homepage.dart';
import 'package:tvbox/PagePlans.dart';
import 'package:tvbox/Card-Pages/sucess.dart';

import 'Card-Pages/sucess.dart';
=======
import 'package:tvbox/Homepage.dart';
import 'package:tvbox/PagePlans.dart';
import 'package:tvbox/cardwidget.dart';
>>>>>>> c4b8578c861c75e7413491545209996e81c0b0e5

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
<<<<<<< HEAD
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        debugShowCheckedModeBanner: false,
        home: CardWidget3());
=======
        debugShowCheckedModeBanner: false,
        home: HomePage());
>>>>>>> c4b8578c861c75e7413491545209996e81c0b0e5
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

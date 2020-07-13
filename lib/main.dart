import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/Card-Pages/fail.dart';
import 'package:tvbox/Card-Pages/pending.dart';
import 'package:tvbox/Homepage.dart';
import 'package:tvbox/PagePlans.dart';
import 'package:tvbox/Card-Pages/sucess.dart';
import 'Card-Pages/sucess.dart';

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
          '/succes-payment': (context) => CardSucces(),
          '/pending-payment': (context) => CardPending(),
          '/fail-payment': (context) => CardFail(),
          '/page-plans': (context) => PagePlans(),
        },
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
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

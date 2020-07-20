import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/pages/Homepage.dart';
import 'package:tvbox/pages/PagePlans.dart';
import 'package:tvbox/pages/payment_pages/fail.dart';
import 'package:tvbox/pages/payment_pages/mobile_fail.dart';
import 'package:tvbox/pages/payment_pages/mobile_pendingd.dart';
import 'package:tvbox/pages/payment_pages/mobile_sucess.dart';
import 'package:tvbox/pages/payment_pages/pending.dart';
import 'package:tvbox/pages/payment_pages/sucess.dart';
import 'package:tvbox/pages/payment_pages/PagePlansReformuled.dart';

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
          '/page-plans': (context) => WebPagePlans(),
        },
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        debugShowCheckedModeBanner: false,
        home: CardSucces());
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

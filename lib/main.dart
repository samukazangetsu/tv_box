import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/pages/Homepage.dart';
import 'package:tvbox/pages/PagePlans.dart';
import 'package:tvbox/pages/payment_pages/fail.dart';
<<<<<<< HEAD
import 'package:tvbox/pages/payment_pages/mobile_fail.dart';
import 'package:tvbox/pages/payment_pages/mobile_pendingd.dart';
import 'package:tvbox/pages/payment_pages/mobile_sucess.dart';
import 'package:tvbox/pages/payment_pages/pending.dart';
import 'package:tvbox/pages/payment_pages/sucess.dart';
import 'package:tvbox/pages/payment_pages/PagePlansReformuled.dart';
=======
import 'package:tvbox/pages/payment_pages/pending.dart';
import 'package:tvbox/pages/payment_pages/sucess.dart';
>>>>>>> 285712a52d79e43781f24afa16622dc5e04aa9f4

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
<<<<<<< HEAD
          '/page-plans': (context) => WebPagePlans(),
        },
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        debugShowCheckedModeBanner: false,
        home: CardSucces());
=======
          '/page-plans': (context) => PagePlans(),
        },
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        debugShowCheckedModeBanner: false,
        home: HomePage());
>>>>>>> 285712a52d79e43781f24afa16622dc5e04aa9f4
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

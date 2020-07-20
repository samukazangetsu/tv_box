import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/pages/Homepage.dart';
import 'package:tvbox/pages/payment_pages/fail.dart';
import 'package:tvbox/pages/payment_pages/pending.dart';
import 'package:tvbox/pages/payment_pages/sucess.dart';
import 'package:tvbox/pages/payment_pages/PagePlansReformuled.dart';
import 'package:tvbox/pages/teste_page.dart';

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
          '/teste': (context) => TestPAge(),
        },
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tvbox/widgets/plan_pages_widgets/mounth_plan_widget.dart';
import 'package:tvbox/widgets/plan_pages_widgets/trim_plan_widget.dart';
import 'package:tvbox/widgets/plan_pages_widgets/year_plan_widget.dart';

class PagePlans extends StatefulWidget {
  @override
  _PagePlansState createState() => _PagePlansState();
}

class _PagePlansState extends State<PagePlans> {
  @override
  Widget build(BuildContext context) {
    final a = "size1";
    final b = "size2";
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "TV Box",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.redAccent,
            elevation: 0,
            actions: [
              FlatButton(
                child: Text("Home",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              FlatButton(
                child: Text("Planos",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/page-plans');
                },
              ),
              FlatButton(
                child: Text("Contato",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                onPressed: () {},
              ),
              SizedBox(
                width: 100,
              )
            ]),
        body: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Stack(children: [
              ClipPath(
                child: Container(
                    color: Colors.red[50],
                    height: 140,
                    width: screenSize.width),
                clipper: WaveClipperOne(),
              ),
              ClipPath(
                child: Container(
                    color: Colors.redAccent,
                    height: 120,
                    width: screenSize.width),
                clipper: WaveClipperTwo(),
              ),
              Positioned(
                child: ClipPath(
                  child: Container(
                    color: Colors.red[50],
                    height: 80,
                    width: screenSize.width,
                  ),
                  clipper: WaveClipperOne(reverse: true),
                ),
                bottom: 0,
                left: 0,
              ),
              Positioned(
                child: ClipPath(
                  child: Container(
                    color: Colors.redAccent,
                    height: 90,
                    width: screenSize.width,
                  ),
                  clipper: WaveClipperTwo(reverse: true),
                ),
                bottom: 0,
                left: 0,
              ),
              screenSize.width > 580
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                MounthPlanWidget(size: a),
                                TrimPlanWidget(size: a),
                                YearPlanWidget(size: a),
                              ])),
                        )
                      ],
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(vertical: 64),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MounthPlanWidget(size: b),
                                SizedBox(height: 8),
                                TrimPlanWidget(size: b),
                                SizedBox(height: 8),
                                YearPlanWidget(size: b),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
            ])));
  }
}

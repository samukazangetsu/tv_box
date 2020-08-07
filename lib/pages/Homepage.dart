import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tvbox/widgets/WhatsButton.dart';
import 'package:tvbox/widgets/plan_pages_widgets/combo_MensalFamily.dart';
import 'package:tvbox/widgets/plan_pages_widgets/combo_familyAnual.dart';
import 'package:tvbox/widgets/plan_pages_widgets/familycombo.dart';
import 'package:tvbox/widgets/plan_pages_widgets/mounth_plan_widget.dart';
import 'package:tvbox/widgets/plan_pages_widgets/myfamily_30d.dart';
import 'package:tvbox/widgets/plan_pages_widgets/trim_plan_widget.dart';
import 'package:tvbox/widgets/plan_pages_widgets/year_plan_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        backgroundColor: Color(0xff845df5),
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
        ],
      ),
      backgroundColor: Color(0xffffff),
      body: LayoutBuilder(builder: (context, constraints) {
        return Center(
          // height: screenSize.height,
          // width: screenSize.width,
          child: Stack(children: [
            // Desenho superior
            ClipPath(
              child: Container(
                  color: Color(0xff845df5),
                  height: screenSize.height * 0.2,
                  width: screenSize.width),
              clipper: WaveClipperOne(),
            ),
            ClipPath(
              child: Container(
                  color: Color(0xff845df5),
                  height: screenSize.height * 0.15,
                  width: screenSize.width),
              clipper: WaveClipperTwo(),
            ),
            Positioned(
              child: ClipPath(
                child: Container(
                  color: Colors.red[50],
                  height: screenSize.height * 0.15,
                  width: screenSize.width,
                ),
                clipper: WaveClipperOne(reverse: true),
              ),
              bottom: 0,
              left: 0,
            ),
            // Desenho inferior
            Positioned(
              child: ClipPath(
                child: Container(
                  color: Color(0xff845df5),
                  height: screenSize.height * 0.15,
                  width: screenSize.width,
                ),
                clipper: WaveClipperTwo(reverse: true),
              ),
              bottom: 0,
              left: 0,
            ),
            screenSize.width < 580
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 64),
                            child: Image.asset(
                              "img/4cards1.png",
                              height: 200,
                            )),
                        SizedBox(height: 16),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 64),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Escolha o melhor plano para você!",
                                    style: TextStyle(
                                      fontSize: kIsWeb ? 24 : 64,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //eight: 10.0
                                    )),
                                SizedBox(height: 16),
                                Text(
                                    "Assista o melhor das programações com as nossas recargas.",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center),
                                // SizedBox(height: 8),
                                //FlatButton.icon(
                                //onPressed: () {
                                //Navigator.of(context)
                                //  .pushReplacementNamed('/page-plans');
                                //},
                                //icon: Icon(Icons.video_library),
                                //label: Text("Confira os planos"),
                                //color: Colors.grey[800],
                                //textColor: Colors.white,
                                //shape: RoundedRectangleBorder(
                                //  borderRadius: BorderRadius.all(
                                //    Radius.circular(32))),
                                //),
                                SizedBox(height: 8),
                                Text("Enviar mensagem para contato!",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                WhatsButton(),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 64),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            MounthPlanWidget(size: b),
                                            SizedBox(height: 8),
                                            TrimPlanWidget(size: b),
                                            SizedBox(height: 8),
                                            YearPlanWidget(size: b),
                                            SizedBox(height: 8),
                                            AnualCombo(size: b),
                                            SizedBox(height: 8),
                                            MensalCombo(size: b),
                                            SizedBox(height: 8),
                                            FamilyAnualCombo(size: b),
                                            SizedBox(height: 8),
                                            FamilymensalCombo(size: b)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  )
                : Stack(alignment: Alignment.center, children: [
                    Positioned(
                      top: screenSize.height * 0.01,
                      child: Column(
                        children: [
                          Text("Escolha seu plano!\n",
                              style: TextStyle(
                                  fontSize: screenSize.height * 0.06,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 10.0)),
                          SizedBox(height: screenSize.height * 0.01),
                          Text(
                              "Assista o melhor das programações com as nossas recargas.",
                              style: TextStyle(
                                  fontSize: screenSize.height * 0.025,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        "img/4cards1.png",
                        height: screenSize.width * 0.15,
                      ),
                    ),
                    Positioned(
                        bottom: screenSize.height * 0.22,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton.icon(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/page-plans');
                              },
                              icon: Icon(Icons.video_library),
                              label: Text("Confira os planos"),
                              color: Colors.grey[800],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32))),
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: screenSize.height * 0.02,
                        child: Column(
                          children: [
                            Text(
                              "Se você tiver algum problema e deseja entrar em contato, envie um WhatsApp.\n(14) 99657-3278\n\n",
                              style: TextStyle(
                                  fontSize: screenSize.height * 0.022,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text("Direitos Reservados a XXXXXX & ZZZZZZ",
                                style: TextStyle(
                                    fontSize: screenSize.height * 0.018,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                    color: Colors.black)),
                            Text("Copyright ©",
                                style: TextStyle(
                                    fontSize: screenSize.height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                    color: Colors.black))
                          ],
                        ))
                  ])
          ]),
        );
      }),
    );
  }
}

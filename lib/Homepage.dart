import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/PagePlans.dart';
import 'package:tvbox/WhatsButton.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.red[50],
        body: LayoutBuilder(builder: (context, constraints) {
          return Center(
              // height: screenSize.height,
              // width: screenSize.width,
              child: Stack(children: [
            // Desenho superior
            ClipPath(
              child: Container(
                  color: Colors.red[50],
                  height: screenSize.height * 0.2,
                  width: screenSize.width),
              clipper: WaveClipperOne(),
            ),
            ClipPath(
              child: Container(
                  color: Colors.redAccent,
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
                  color: Colors.redAccent,
                  height: screenSize.height * 0.15,
                  width: screenSize.width,
                ),
                clipper: WaveClipperTwo(reverse: true),
              ),
              bottom: 0,
              left: 0,
            ),
            screenSize.width < 580
                ? Center(
                    // padding: EdgeInsets.only(top: 100),
                    // width: screenSize.width,
                    // height: screenSize.height,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 64),
                            //height: 160,

                            child: Image.asset(
                              "lib/assets/4cards1.png",
                            )),
                        //SizedBox(height: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 64),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Escolha o melhor plano para você!",
                                      style: TextStyle(
                                          fontSize: kIsWeb ? 48 : 64,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          //eight: 10.0
                                      )),
                                  SizedBox(height: 8),
                                  Text(
                                      "Assista o melhor das programações com as nossas recargas.",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                          color: Colors.black54)),
                                  SizedBox(height: 8),
                                  FlatButton.icon(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PagePlans()));
                                    },
                                    icon: Icon(Icons.video_library),
                                    label: Text("Confira os planos"),
                                    color: Colors.grey[800],
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32))),
                                  ),
                                  SizedBox(height: 8),
                                  Text("Enviar mensagem para contato!",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 8),
                                  WhatsButton()
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(
                    heightFactor: screenSize.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Escolha seu plano!",
                            style: TextStyle(
                                fontSize: screenSize.height * 0.08,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 10.0)),
                        SizedBox(height: screenSize.height * 0.01),
                        Text(
                            "Assista o melhor das programações com as nossas recargas.",
                            style: TextStyle(
                                fontSize: screenSize.height * 0.035,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: screenSize.height * 0.04),
                        Container(
                          height: screenSize.height * 0.45,
                          child: Image.asset("lib/assets/4cards1.png"),
                        ),
                        SizedBox(height: screenSize.height * 0.04),
                        Row(
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
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Text(
                          "Se você tiver algum problema e deseja entrar em contato, envie um WhatsApp.\n(14) 99657-3278",
                          style: TextStyle(fontSize: screenSize.height * 0.030, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Center(
                            child: Column(
                          children: [
                            //Text("(14) 99657-3278",
                                //style: TextStyle(
                                    //fontSize: screenSize.height * 0.03,
                                    //fontWeight: FontWeight.bold)),
                            //SizedBox(height: screenSize.height * 0.01),
                            Text("Direitos Reservados a XXXXXX & ZZZZZZ",
                                style: TextStyle(
                                    fontSize: screenSize.height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                    color: Colors.black)),
                            SizedBox(height: screenSize.height * 0.01),
                            Text("Copyright ©",
                                style: TextStyle(
                                    fontSize: screenSize.height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                    color: Colors.black))
                          ],
                        ))
                      ],
                    ),
                  ),
          ]));
        }));
  }
}

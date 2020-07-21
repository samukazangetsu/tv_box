import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvbox/models/mercado_pago_model.dart';
import 'package:tvbox/widgets/WhatsButton.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
        ],
      ),
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
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 64),
                            child: Image.asset(
                              "lib/assets/4cards1.png",
                              height: 200,
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
                                        fontSize: kIsWeb ? 24 : 64,
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
                                          color: Colors.black54),
                                      textAlign: TextAlign.center),
                                  //SizedBox(height: 8),
                                  FlatButton.icon(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/page-plans');
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
                : Stack(alignment: Alignment.center, children: [
                    Positioned(
                      top: 20,
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
                        "lib/assets/4cards1.png",
                        height: screenSize.width * 0.15,
                      ),
                    ),
                    Positioned(
                        bottom: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton.icon(
                              onPressed: () {
                                //final _pagamento = //MercadoPago();
                                //_pagamento.gravarPreference().then((value) {
                                  //final url = value['response']['init_point'];
                                  //print(url);
                                  //launch(url);
                                //});

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
                        bottom: 10,
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

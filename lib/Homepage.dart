import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
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
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            ClipPath(
              child: Container(
                color: Colors.red[50],
                height: 140,
                width: screenSize.width
              ),
              clipper: WaveClipperOne(),
            ),
            ClipPath(
              child: Container(
                color: Colors.redAccent,
                height: 120,
                width: screenSize.width
              ),
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
            screenSize.width < 580 ?
            Container(
              padding: EdgeInsets.only(top: 100),
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 64),
                    //height: 160,
                    
                    child: Image.asset("lib/assets/4cards1.png", )
                  ),
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
                            fontSize: kIsWeb ? 48 : 64, fontWeight: FontWeight.w700, color: Colors.black
                          )),
                          SizedBox(height: 8),
                          Text("Assista o melhor das programações com as nossas recargas.",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, letterSpacing: 1.0, color: Colors.black54)),
                          SizedBox(height: 8),

                          FlatButton.icon(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PagePlans()));
                            },
                            icon: Icon(Icons.video_library),
                            label: Text("Confira os planos"),
                            color: Colors.grey[800],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(32))
                            ),
                            ),
                            SizedBox(height: 8),
                            Text("Enviar mensagem para contato!", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            WhatsButton()
                        ]),
                    ),
                  ),
                ],
              ),
            ) :
            Container(
        height: screenSize.height,
        width: screenSize.width,
        padding: EdgeInsets.symmetric(horizontal: 32),
        margin: EdgeInsets.only(top: 120),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Escolha seu plano!", style: TextStyle(fontSize: 64, letterSpacing: 10.0)),
                SizedBox(height: 8),
                Text("Assista o melhor das programações com as nossas recargas.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 24),
                Container(
                  child: Image.asset("lib/assets/4cards1.png"),
                ),
                SizedBox(height: 32),
                Row( 
                  children: [
                    FlatButton.icon(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PagePlans()));
                              },
                              icon: Icon(Icons.video_library),
                              label: Text("Confira os planos"),
                              color: Colors.grey[800],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(32))
                              ),
                              ),
                    SizedBox(width: 32.0,),
                  ],
                ),
                
                
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Text("Se você tiver algum problema e deseja entrar em contato, envie um WhatsApp.", style: TextStyle(fontSize: 22)),
                ),
                SizedBox(height: 16,),
                Center(
                  child: Column(
                    children: [
                      Text("(14) 99657-3278", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text("Direitos Reservados a XXXXXX & ZZZZZZ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 8),
                      Text("Copyright ©",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
                    ],
                  )
                )
              ],
            )
            
          ],
        ),
            )


        ])));
            
  }
}

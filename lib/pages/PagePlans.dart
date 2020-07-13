import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mercadopago_sdk/mercadopago_sdk.dart';
import 'package:tvbox/utils/globals.dart' as globals;
import 'package:tvbox/widgets/plan_pages_widgets/mounth_plan_widget.dart';
import 'package:tvbox/widgets/plan_pages_widgets/trim_plan_widget.dart';
import 'package:tvbox/widgets/plan_pages_widgets/year_plan_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/mercado_pago_model.dart';

class PagePlans extends StatefulWidget {
  @override
  _PagePlansState createState() => _PagePlansState();
}

class _PagePlansState extends State<PagePlans> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                                MounthPageWidget(),
                                TrimPageWidget(),
                                YearPageWidget(),
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
                                Container(
                                    child: Image.asset(
                                  "lib/assets/mensal.png",
                                  height: 400,
                                  width: screenSize.width,
                                )),
                                Text(
                                    "Recargas TV EXPRESS 30 DIAS / Melhor Preço e",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("Entrega Garantida do Produto.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 16),
                                Text("PREÇO R\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[300],
                                        fontSize: 22)),
                                SizedBox(height: 16),
                                FlatButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => PagePlans()));
                                  },
                                  icon: Icon(Icons.attach_money),
                                  color: Colors.red[800],
                                  label: Text("COMPRAR AGORA"),
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32))),
                                ),
                                SizedBox(height: 8),
                                Container(
                                    child: Image.asset(
                                  "lib/assets/mensal.png",
                                  height: 400,
                                  width: screenSize.width,
                                )),
                                Text(
                                    "Recargas TV EXPRESS 30 DIAS / Melhor Preço e",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("Entrega Garantida do Produto.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 16),
                                Text("PREÇO R\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[300],
                                        fontSize: 22)),
                                SizedBox(height: 16),
                                FlatButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/teste');
                                  },
                                  icon: Icon(Icons.attach_money),
                                  color: Colors.red[800],
                                  label: Text("COMPRAR AGORA"),
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32))),
                                ),
                                SizedBox(height: 8),
                                Container(
                                    child: Image.asset(
                                  "lib/assets/mensal.png",
                                  height: 400,
                                  width: screenSize.width,
                                )),
                                Text(
                                    "Recargas TV EXPRESS 30 DIAS / Melhor Preço e",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("Entrega Garantida do Produto.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 16),
                                Text("PREÇO R\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[300],
                                        fontSize: 22)),
                                SizedBox(height: 16),
                                FlatButton.icon(
                                  onPressed: () {
                                    final _pagamento = MercadoPago();
                                    String _url;
                                    _pagamento
                                        .gravarPreference()
                                        .then((result) {
                                      _url = result['response']['init_point'];
                                      launch(_url);
                                    });

                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) => PagePlans()));
                                  },
                                  icon: Icon(Icons.attach_money),
                                  color: Colors.red[800],
                                  label: Text("COMPRAR AGORA"),
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
            ])));
  }
}

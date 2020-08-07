// ignore: avoid_web_libraries_in_flutter
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tvbox/models/mercado_pago_model.dart';
import 'package:tvbox/pages/payment_pages/mobile_sucess.dart';
import 'package:url_launcher/url_launcher.dart';

class MounthPlanWidget extends StatelessWidget {
  final String size;

  const MounthPlanWidget({Key key, @required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (size == "size1") {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(
              "img/mensal.png",
              height: 300,
              width: screenSize.width,
            )),
            Text("Recargas TV EXPRESS 30 DIAS / Melhor Preço e",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Entrega Garantida do Produto.",
                style: TextStyle(fontWeight: FontWeight.bold)),
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
                Firestore.instance
                    .collection('codigos')
                    .document('1 mês')
                    .collection('items')
                    .getDocuments()
                    .then((value) => print(value.documents));
                //_pagamento.gravarPreference().then((value) {
                //final url = value['response']['init_point'];
                //print(url);
                //launch(url);
                //});
              },
              //Navigator.of(context).pushNamed('/succes-payment');
              icon: Icon(Icons.attach_money),
              color: Colors.red[800],
              label: Text("COMPRAR AGORA"),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32))),
            )
          ],
        ),
      );
    } else {
      return Column(
        children: [
          Container(
              child: Image.asset(
            "img/mensal.png",
            height: 400,
            width: screenSize.width,
          )),
          Text("Recargas TV EXPRESS 30 DIAS / Melhor Preço e",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Entrega Garantida do Produto.",
              style: TextStyle(fontWeight: FontWeight.bold)),
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
              Firestore.instance
                  .collection('codigos')
                  .document('1 mês')
                  .collection('items')
                  .getDocuments()
                  .then((value) {
                final code = value.documents[0].data;
                _pagamento.title = code["code"];
                _pagamento.price = code["price"];
                _pagamento.id = value.documents[0].documentID;
                _pagamento
                    .gravarPreference()
                    .then((value) => launch(value["response"]["init_point"]));
              });
            },
            icon: Icon(Icons.attach_money),
            color: Colors.red[800],
            label: Text("COMPRAR AGORA"),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32))),
          )
        ],
      );
    }
  }
}

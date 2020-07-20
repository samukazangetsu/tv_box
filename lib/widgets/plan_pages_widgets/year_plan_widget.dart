import 'package:flutter/material.dart';
import 'package:tvbox/models/mercado_pago_model.dart';
import 'package:url_launcher/url_launcher.dart';

class YearPlanWidget extends StatelessWidget {
  final String size;

  const YearPlanWidget({Key key, @required this.size}) : super(key: key);

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
              "lib/assets/anual.png",
              height: 300,
              width: screenSize.width,
            )),
            Text(
              "Recargas TV EXPRESS 365 DIAS / Melhor Preço e",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
                Navigator.of(context).pushNamed('/fail-payment');
              },
              icon: Icon(Icons.attach_money),
              color: Colors.red[800],
              textColor: Colors.white,
              label: Text("COMPRAR AGORA"),
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
            "lib/assets/anual.png",
            height: 400,
            width: screenSize.width,
          )),
          Text("Recargas TV EXPRESS 365 DIAS / Melhor Preço e",
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
              String _url;
              _pagamento.gravarPreference().then((result) {
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
                borderRadius: BorderRadius.all(Radius.circular(32))),
          )
        ],
      );
    }
  }
}

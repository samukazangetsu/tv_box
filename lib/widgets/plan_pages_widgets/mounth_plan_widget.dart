import 'package:flutter/material.dart';
import 'package:tvbox/pages/payment_pages/mobile_sucess.dart';

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
              "lib/assets/mensal.png",
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
              onPressed: () => MobileSucess(),
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
            "lib/assets/mensal.png",
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
              Navigator.of(context).pushNamed('/');
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

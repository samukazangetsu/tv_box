import 'package:flutter/material.dart';

class TrimPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Image.asset(
            "lib/assets/mensal.png",
            height: 500,
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
              Navigator.of(context).pushNamed('/pending-payment');
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
  }
}

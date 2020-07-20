import 'package:flutter/material.dart';

class MobileFail extends StatefulWidget {
  @override
  _MobileFailState createState() => _MobileFailState();
}

class _MobileFailState extends State<MobileFail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Falha no pagamento!',
          style: TextStyle(color: Colors.black87, fontFamily: 'Verdana'),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Text(
              'Nós do Tv box lamentamos em informar que seu pagamento nao foi efetuado com sucesso.\nTente refazer sua compra ou verificar suas credenciais.\nObrigado!',
              style: TextStyle(fontSize: 18, fontFamily: 'Arial'),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Card(
                color: Colors.white,
                elevation: 3,
                shadowColor: Colors.black,
                child: SizedBox(
                  height: 230,
                  width: 330,
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 150,
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                "logomp.png",
                height: 30,
              ),
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class CardFail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Falha no pagamento!',
          style: TextStyle(color: Colors.black87, fontFamily: 'Verdana'),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              width: screenSize.width * 0.8,
              top: 50,
              child: Text(
                'Nós do Tv box lamentamos em informar que seu pagamento não foi efetuado com sucesso.\nTente refazer sua compra ou verificar suas credenciais.\nObrigado!',
                style: TextStyle(fontSize: 18, fontFamily: 'Arial'),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: 60,
              child: Image.asset(
                "img/logomp.png",
                height: 30,
              ),
            ),
            SizedBox(height: screenSize.height * 0.023),
            Center(
              child: Card(
                  color: Colors.white,
                  //shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(10),
                  //side: BorderSide(color: Colors.black, width: 1)),
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
            ),
          ],
        ),
      ),
    );
  }
}

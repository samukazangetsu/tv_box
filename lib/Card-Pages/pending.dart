import 'package:flutter/material.dart';

class CardPending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagamento pendente...',
          style: TextStyle(color: Colors.black87, fontFamily: 'Verdana'),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 50,
              child: Text(
                'Nós do Tv box informamos que\nseu pagamento esta em pendencia.\nAguarde ate que o mesmo seja aprovado.\nObrigado!',
                style: TextStyle(fontSize: 18, fontFamily: 'Arial'),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: 60,
              child: Image.asset(
                "lib/assets/logomp.png",
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
                      Icons.hourglass_empty,
                      color: Colors.orange,
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

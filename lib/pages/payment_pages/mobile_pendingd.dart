import 'package:flutter/material.dart';

class MobilePending extends StatefulWidget {
  @override
  _MobilePendingState createState() => _MobilePendingState();
}

class _MobilePendingState extends State<MobilePending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagamento pendente...',
          style: TextStyle(color: Colors.black87, fontFamily: 'Verdana'),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Text(
              'Nós do Tv box informamos que\nseu pagamento esta em pendencia.\nAguarde ate que o mesmo seja aprovado.\nObrigado!',
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
                    Icons.hourglass_empty,
                    color: Colors.orange,
                    size: 150,
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                "img/logomp.png",
                height: 30,
              ),
            ),
          ],
        ),
      )),
    );
  }
}

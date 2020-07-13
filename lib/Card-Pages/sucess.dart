import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento efetuado com sucesso!', style: TextStyle(color: Colors.black87, fontFamily: 'Verdana'),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 92),
              padding: EdgeInsets.only(bottom: 64),
              child: Image.asset("lib/assets/logomp.png", height: 200,),
            ),
            Text('Nós do Tv box agradecemos sua preferencia.\nSeu pagamento foi efetuado com sucesso.\nVoce recebera seu codigo via Email.\nObrigado!', style: TextStyle(fontSize: 22, fontFamily: 'Arial'),),
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
                height: 250,
                width: 350,
                child: 
                Icon(
                  Icons.done_all,
                  color: Colors.green,
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

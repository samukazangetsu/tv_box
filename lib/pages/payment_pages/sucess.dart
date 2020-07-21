import 'package:flutter/material.dart';

class CardSucces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagamento efetuado com sucesso!',
          style: TextStyle(color: Colors.black87, fontFamily: 'Verdana'),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 50,
              child: Text(
                'Nós do Tv box agradecemos sua preferencia.\nVoce recebera seu codigo via Email.\nObrigado!',
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
<<<<<<< HEAD
            Container(
              width: 330,
              height: 40,
              margin: EdgeInsets.only(top: 400),
                          child: TextField(

                textAlign: TextAlign.center,
                autofocus: false,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                fillColor: Colors.white
                ),
              ),
            ),
=======
>>>>>>> 285712a52d79e43781f24afa16622dc5e04aa9f4
            Center(
              child: Card(
                  color: Colors.white,
                  elevation: 3,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    height: 230,
                    width: 330,
                    child: Icon(
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

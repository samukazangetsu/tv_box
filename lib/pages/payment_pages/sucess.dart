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
              top: screenSize.width * 0.015,
              width: screenSize.width * 0.8,
              child: Text(
                'Nós do Tv box agradecemos sua preferencia. \nObrigado!',
                style: TextStyle(fontSize: 18, fontFamily: 'Arial'),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: screenSize.height * 0.15,
              child: Card(
                  color: Colors.white,
                  elevation: 3,
                  shadowColor: Colors.black,
                  child: SizedBox(
                      height: 230,
                      width: 330,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 150,
                          ),
                          Text(
                            "Seu código é: 123456",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ))),
            ),
            Positioned(
                bottom: screenSize.height * 0.15,
                child: Container(
                  alignment: Alignment.center,
                  width: screenSize.height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Receba seu código por e-mail.\nÉ uma forma mais segura de guardá-lo",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        autofocus: false,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Insira seu e-mail",
                            contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            fillColor: Colors.white),
                      ),
                      SizedBox(height: 8),
                      RaisedButton(
                          child: Text(
                            "Enviar",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.redAccent,
                          onPressed: () {}),
                    ],
                  ),
                )),
            Positioned(
              bottom: screenSize.height * 0.05,
              child: Image.asset(
                "img/logomp.png",
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

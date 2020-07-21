import 'package:flutter/material.dart';

class MobileSucess extends StatefulWidget {
  @override
  _MobileSucessState createState() => _MobileSucessState();
}

class _MobileSucessState extends State<MobileSucess> {
  @override
  Widget build(BuildContext context) {
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
        child: Container(
          padding: EdgeInsets.only(top: 150),
                  child: Column(
            children: [
              Text(
                  'Nós do Tv box agradecemos sua preferencia.\nVoce recebera seu codigo via Email.\nObrigado!',
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
                        Icons.done_all,
                        color: Colors.green,
                        size: 150,
                      ),
                    )),
              Container(
                width: 330,
                height: 30,
                margin: EdgeInsets.only(top: 30),
                            child: TextField(
                  
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
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset(
                  "lib/assets/logomp.png",
                  height: 30,
                ),
              ),            
            ],
          ),
        )
      ),
      );
    
  }
}
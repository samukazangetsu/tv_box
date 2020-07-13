import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Exemple'),
      ),
      body: Center(
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.black, width: 8)),
            elevation: 3,
            shadowColor: Colors.black,
            child: SizedBox(
              height: 250,
              width: 350,
              child: Icon(
                Icons.done_all,
                color: Colors.green,
                size: 150,
              ),
            )),
      ),
    );
  }
}

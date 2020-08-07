import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestPAge extends StatefulWidget {
  @override
  _TestPAgeState createState() => _TestPAgeState();
}

class _TestPAgeState extends State<TestPAge> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text("Teste"),
          onPressed: () {
            Firestore.instance.collection("teste").add({
              "Teste": 12345,
            });
          }),
    );
  }
}

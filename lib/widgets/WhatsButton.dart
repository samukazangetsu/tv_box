import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsButton extends StatefulWidget {
  @override
  _WhatsButtonState createState() => _WhatsButtonState();
}

class _WhatsButtonState extends State<WhatsButton> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterOpenWhatsapp.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          // FlutterOpenWhatsapp.sendSingleMessage("14996573278", "Olá, tudo bem?");
          launch(
              'https://api.whatsapp.com/send?phone=5514996573278&text=Ol%C3%A1%2C%20tudo%20bem%3F');
        },
        color: Colors.greenAccent,
        textColor: Colors.white,
        child: Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}

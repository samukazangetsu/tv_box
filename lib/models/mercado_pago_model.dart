import 'package:mercadopago_sdk/mercadopago_sdk.dart';

String clientId = "4579855677890278";
String clientSecret = "Tgv5qOi1BYrl2JqWuk65S99b3PRu6jUf";

class MercadoPago {
  String title;
  double price;
  String id;

  final mp = MP(clientId, clientSecret);

  Future<Map<String, dynamic>> gravarPreference() async {
    final preference = {
      "items": [
        {
          "id": id,
          "title": title,
          "currency_id": "BRL",
          "description": "Código TV BOX",
          "category_id": "TV",
          "quantity": 1,
          "unit_price": price
        }
      ],
      "back_urls": {
        "success": "http://localhost:63103/#/succes-payment",
        "failure": "http://localhost:63103/pending-payment",
        "pending": "http://localhost:63103/fail-payment"
      },
      "auto_return": "approved",
      "payment_methods": {
        "excluded_payment_methods": [
          {"id": "master"}
        ],
        "installments": 12
      },
      "expires": false,
    };

    var result = await mp.createPreference(preference);
    return result;
  }

  void criarPagamento(String url, {Map<String, dynamic> result}) {
    mp.post(url, data: result);
  }

  Future<Map<String, dynamic>> index() async {
    final paymentInfo = await mp.getPayment("PID");

    print(paymentInfo);

    return paymentInfo;
  }
}

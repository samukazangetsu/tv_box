import 'package:mercadopago_sdk/mercadopago_sdk.dart';

String clientId = "4579855677890278";
String clientSecret = "Tgv5qOi1BYrl2JqWuk65S99b3PRu6jUf";

class MercadoPago {
  final mp = MP(clientId, clientSecret);

  Future<Map<String, dynamic>> gravarPreference() async {
    final preference = {
      "items": [
        {
          "id": "item-ID-1234",
          "title": "Código",
          "currency_id": "BRL",
          "description": "Código TV BOX",
          "category_id": "TV",
          "quantity": 1,
          "unit_price": 10.00
        }
      ],
      "payer": {
        "name": "João",
        "surname": "Silva",
        "email": "user@email.com",
        "phone": {"area_code": "11", "number": "4444-4444"},
        "identification": {"type": "CPF", "number": "19119119100"},
        "address": {
          "street_name": "Street",
          "street_number": 123,
          "zip_code": "06233200"
        }
      },
      "back_urls": {
        "success": "https://www.success.com",
        "failure": "http://www.failure.com",
        "pending": "http://www.pending.com"
      },
      "auto_return": "approved",
      "payment_methods": {
        "excluded_payment_methods": [
          {"id": "master"}
        ],
        "installments": 12
      },
      "notification_url": "https://www.your-site.com/ipn",
      "external_reference": "Reference_1234",
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

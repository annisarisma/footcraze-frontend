import 'dart:convert';
import 'package:footcraze_frontend/models/cart_model.dart';
import 'package:footcraze_frontend/models/product_model.dart';
import 'package:http/http.dart' as http;

class TransactionService {
  String baseUrl = 'http://10.0.2.2:8000/api';

  Future<bool> checkout(String token, List<CartModel> carts, double totalPrice) async {

    var url = '$baseUrl/transaction-store';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode({
      'address': 'Marsemoon',
      'items': carts.map((cart) => {
        'id': cart.product!.id,
        'quantity': cart.quantity
        }
      ).toList(),
      'status': 'Pending',
      'totalPrice': totalPrice,
      'shippingPrice': 0,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body
    );

    print(response.body);

    if (response.statusCode == 200) {
      return true; 
    }
    else {
      throw Exception(response.statusCode);
    }

  }
}
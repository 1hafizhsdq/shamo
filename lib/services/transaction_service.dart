import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo/models/product_model.dart';
import '../models/cart_model.dart';

class TransactionService {
  // String baseUrl = "http://10.50.1.196:8000/api";
  String baseUrl = "https://shamo-backend.buildwithangga.id/api";

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    var url = '$baseUrl/checkout';
    var headers = {
      'Content-type': 'application/json',
      'authorization': token,
    };
    var body = jsonEncode({
      'address': 'Marsemoon',
      'items': carts
          .map(
            (cart) => {
              'id': cart.product.id,
              'quantity': cart.quantity,
            },
          )
          .toList(),
      'status': 'PENDING',
      'total_price': totalPrice,
      'shipping_price': 0,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if(response.statusCode == 200){
      return true;
    }else{
      throw Exception('Gagal melakukan checkout!');
    }
  }
}

// ApiService.dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:learning/data/models/products_model.dart';
import 'package:learning/utils/constants.dart';

class ApiService {
  Future<ProductsModel> fetchProducts() async {
    final response =
        await http.get(Uri.parse("${Constants.baseUrl}/product/all"));
    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body) as Map<String, dynamic>;
      final productsModel = ProductsModel.fromJson(jsonList);
      print(productsModel.products.toString());
      return productsModel;
    } else {
      throw Exception("Error occurred while fetching posts.");
    }
  }

  Future<ProductsModel> createProducts(ProductsModel postModel) async {
    final response = await http.post(
      Uri.parse("${Constants.baseUrl}/posts"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(postModel.toJson()),
    );
    if (response.statusCode == 201) {
      print(response.body);
      return ProductsModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Error occurred while creating a post.");
    }
  }
}

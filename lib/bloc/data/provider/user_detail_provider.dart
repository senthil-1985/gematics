
import 'dart:convert';

import '../model/product_detail.dart';
import '../model/user_detail.dart';
import 'package:http/http.dart' as http;

class UserDetailProvider{
final String URL="https://dummyjson.com/products";
//final String URL="https://5f383e6541c94900169bfd42.mockapi.io/api/v1/user_details";
  Future<ProductModel> fetchUserDetails() async{

      final response = await http.get(Uri.parse(URL));
      if (response.statusCode == 200) {
        final resData = ProductModel.fromJson(jsonDecode(response.body));
        return resData;
      }

      throw Exception('Not able to fetch the data '+response.body);

}
}
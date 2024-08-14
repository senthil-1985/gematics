
import 'package:flutter_master/bloc/data/model/product_detail.dart';
import 'package:flutter_master/bloc/data/provider/user_detail_provider.dart';

import '../model/user_detail.dart';

class UserDetailRepository{
final UserDetailProvider _userDetailsProvider=UserDetailProvider();

Future<ProductModel> fetchUserData() async=>
  _userDetailsProvider.fetchUserDetails();
}
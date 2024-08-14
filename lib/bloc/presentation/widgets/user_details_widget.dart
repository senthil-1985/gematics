import 'package:flutter/material.dart';
import 'package:flutter_master/bloc/data/model/user_detail.dart';

import '../../data/model/product_detail.dart';

class UserDetailsWidget extends StatelessWidget {
  final ProductModel userModel;

  const UserDetailsWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          /*child: Image.network(
            userModel.image ?? "",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),*/
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Name: ${userModel.products ?? ""}"),
            Text("Percentage: ${userModel.skip ?? ""}"),
            Text("Won: ${userModel.limit ?? ""}"),
          ],
        )
      ],
    );
  }
}

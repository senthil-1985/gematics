import 'package:flutter/material.dart';

import '../../data/model/product_detail.dart';

class ProductDetail extends StatefulWidget {
  final ProductModel userModel;

  const ProductDetail({super.key, required this.userModel});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.userModel.products.length,
        itemBuilder: (context, index) {
          /*return ListTile(
        title: Text(widget.userModel.products[index].title),
        subtitle: Text(widget.userModel.products[index].description +"Category:"+widget.userModel.products[index].category.toString()),

      );*/
          return Container(
            child: Column(
              children: [
                Text(widget.userModel.products[index].title,style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),),
                Text(widget.userModel.products[index].description,style: const TextStyle(
                  fontSize: 20,
                ),),
                Text(widget.userModel.products[index].category.toString()),
                Text(widget.userModel.products[index].price.toString()),
                Text(widget.userModel.products[index].discountPercentage.toString()),
                Text(widget.userModel.products[index].rating.toString()),
                Text(widget.userModel.products[index].stock.toString()),
                Text(widget.userModel.products[index].tags.toString()),
                Text(widget.userModel.products[index].brand.toString()),
                Text(widget.userModel.products[index].sku.toString()),
                Text(widget.userModel.products[index].weight.toString()),
                Text(widget.userModel.products[index].warrantyInformation.toString()),
                Text(widget.userModel.products[index].shippingInformation.toString()),
                Text(widget.userModel.products[index].availabilityStatus.toString()),
              ],
            ),
          );
        });
  }
}

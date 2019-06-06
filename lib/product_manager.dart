import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    super.initState();
     _products.add(widget.startingProduct);
  }
  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ProductControl(_addProduct),
      Products(_products)
    ]);
  }
}

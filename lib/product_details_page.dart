import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, Object> product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        children: [
          Text(
            
            product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Image.asset(product['imageUrl'] as String),
          const Spacer(),
         
        ],
      ),
    );
  }
}
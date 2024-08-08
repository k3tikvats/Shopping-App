import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding:const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 10),
            Text('\$$price',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: 10),
            
            Center(
              child: Image.asset(image,height:175)
              ),
            const SizedBox(height: 10),
          ],
        ),
      );
  }
}
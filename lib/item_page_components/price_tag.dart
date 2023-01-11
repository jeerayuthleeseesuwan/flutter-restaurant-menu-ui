import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final double price;

  const PriceTag({
    Key? key,
    required this.price
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 6
          )
        ]
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.local_offer_outlined), 
            Text(
              "RM " + price.toString(),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  final int stars;

  const Ratings({
    Key? key,
    required this.stars
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(stars, (i) {
              return Icon(Icons.favorite, size: 20, color: Colors.yellow[700]);
            }),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate((5 -stars), (i) {
              return Icon(Icons.favorite_border, size: 20, color: Colors.yellow[700]);
            }),
          ),

          
        ],
    );
  }
}

import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  final String imgUrl;

  const ItemImg({
    Key? key,
    required this.imgUrl
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 680,
      child: ClipRRect(
        child: Hero(
          tag: imgUrl,
          child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
        ),
      ),
    );
  }
}

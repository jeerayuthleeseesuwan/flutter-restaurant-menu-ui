import 'package:flutter/material.dart';

class TitleLabel extends StatelessWidget {
  final String text;
  final double size;

  const TitleLabel({
    Key? key,
    required this.text,
    required this.size
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size, 
        height: 1.5,  
        letterSpacing: 1, 
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

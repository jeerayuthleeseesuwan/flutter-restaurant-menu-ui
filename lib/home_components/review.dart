import 'dart:ui';

import 'package:flutter/material.dart';

import 'ratings.dart';

class Review extends StatelessWidget {
  final String text;
  final int stars;

  const Review({
    Key? key,
    required this.text,
    required this.stars
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 20 -20 - 5 - 5,
            decoration: BoxDecoration(
              color: Colors.grey.shade800.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Ratings(stars: stars),

                  
                  SizedBox(height: 10),

                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20 -20 - 5 - 5 - 15 - 15,
                    height: 50,
                    child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 17, 
                          height: 1.5,  
                          letterSpacing: 1, 
                          color: Colors.white,
                        ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

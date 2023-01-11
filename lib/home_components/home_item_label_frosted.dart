import 'dart:ui';

import 'package:flutter/material.dart';
import 'ratings.dart';
import 'review.dart';

class HomeItemLabelFrosted extends StatelessWidget {
  final String title;
  final double price;
  final String imgUrl;
  final int stars;
  final int likeCount;
  final String reviewText;

  const HomeItemLabelFrosted({
    Key? key,
    required this.title,
    required this.price,
    required this.imgUrl,
    required this.stars,
    required this.likeCount,
    required this.reviewText,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width - 20 -20,
      child: PageView(
        children: [
          Padding(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///[Title]
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 20 -20 - 5 - 5 - 15 - 15 - 32,
                            child: Text(
                                title,
                                style: TextStyle(
                                  fontSize: 26, 
                                  height: 1.5,  
                                  letterSpacing: 1, 
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Icon(Icons.star_border, color: Colors.white, size: 32,),
                          )
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ratings(stars: stars),

                          Text(
                            "$likeCount People like",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 10),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          ),

          Review(stars: stars, text: reviewText,),
        ]
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design_8/home_components/ratings.dart';

class ItemPageTitle extends StatelessWidget {
  final String title;
  final int stars;
  final int likeCount;

  const ItemPageTitle({
    Key? key,
    required this.title,
    required this.stars,
    required this.likeCount,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade800.withOpacity(0.6),
            borderRadius: BorderRadius.circular(30)
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
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 28, 
                            height: 1.5,  
                            letterSpacing: 1, 
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),

                    ///[Star Icon]
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
                    ///[Rating component]
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
    );
  }
}

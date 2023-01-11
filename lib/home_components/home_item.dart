import 'package:flutter/material.dart';

import '../item_page.dart';
import 'home_item_label_frosted.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final double price;
  final String imgUrl;
  final int stars;
  final int likeCount;
  final String reviewText;

  const HomeItem({
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
    return GestureDetector(
      onTap: () { 
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => ItemPage(
            title, price, imgUrl, stars, likeCount
          ))
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Stack(
          children: [

            ///[Image]
            Container(
              width: MediaQuery.of(context).size.width -20 -20,
              height: MediaQuery.of(context).size.width -20 -20,
              decoration: BoxDecoration(
                color: Color(0xff303030),
                borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: imgUrl,
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            ///[Frosted]
            Positioned(
              bottom: 0,
              child: HomeItemLabelFrosted(
                title: title,
                price: price,
                imgUrl: imgUrl,
                likeCount: likeCount,
                stars: stars,
                reviewText: reviewText
              )
            ),
          ],
        ),
      ),
    );
  }
}

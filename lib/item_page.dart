import 'dart:ui';

import 'package:flutter/material.dart';

import 'item_page_components/item_add_on_section.dart';
import 'item_page_components/item_desc.dart';
import 'item_page_components/item_img.dart';
import 'item_page_components/item_page_title.dart';
import 'item_page_components/price_tag.dart';

class ItemPage extends StatefulWidget {
  final String title;
  final double price;
  final String imgUrl;
  final int stars;
  final int likeCount;

  const ItemPage(this.title, this.price, this.imgUrl, this.stars, this.likeCount);
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  bool viewMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ItemImg(imgUrl: widget.imgUrl,),

                ///[Shadow overlay on top of the image]
                Positioned(
                bottom: 0,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  width: MediaQuery.of(context).size.width,
                    height: viewMore ? 1200 : 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xff202020)
                        ]
                      )
                    ),
                  ),
                ),
                

                ///[Label Section]
                Positioned(
                  bottom: 0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                    width: MediaQuery.of(context).size.width,
                    height: viewMore ? 610 : 360,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            ///[Price Tag]
                            Align(
                              alignment: Alignment.centerRight,
                              child: PriceTag(price: widget.price)
                            ),

                            
                            SizedBox(height: 15),

                            ///[Title Section]
                            ItemPageTitle(
                              title: widget.title, 
                              stars: widget.stars, 
                              likeCount: widget.likeCount
                            ),

                            SizedBox(height: 20),

                            ///[Description Section]
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  viewMore = !viewMore;
                                });
                              },
                              child: ItemDesc(
                                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
                                viewMore: viewMore
                              )
                            ),

                              SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                ///[Back Button]
                Positioned(
                  top: MediaQuery.of(context).padding.top +  20,
                  left: 20,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  )
                ),
              ]
            ),

            ItemAddOnSection()
          ],
        ),
      ),
      
    );
    
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

import 'home_components/home_item.dart';
import 'home_components/title_label.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool viewMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleLabel(text: "Today's Special", size: 30),

                SizedBox(height: 20),

                HomeItem(
                  title: "Ro Chicken Platter", 
                  price: 26.20,
                  imgUrl: "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                  stars: 5,
                  likeCount:  3521,
                  reviewText: "This is the best!"
                ),

                HomeItem(
                  title: "Chicken Pie",
                  price: 20.90,
                  imgUrl: "https://images.unsplash.com/photo-1535920527002-b35e96722eb9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                  stars: 4,
                  likeCount: 521,
                  reviewText: "Savory, but I need something more.",
                ),

                HomeItem(
                  title: "Pineapple Fried Rice",
                  price: 16.50,
                  imgUrl: "https://images.unsplash.com/photo-1543826173-70651703c5a4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=499&q=80",
                  stars: 3,
                  likeCount: 291,
                  reviewText: "It's nice...",
                )
              ],
            ),
          ),
        ),
      ),
      
    );
    
  }

}
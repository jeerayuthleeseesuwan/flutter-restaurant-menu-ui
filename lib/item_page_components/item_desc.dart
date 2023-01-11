import 'dart:ui';

import 'package:flutter/material.dart';

class ItemDesc extends StatefulWidget {
  final String description;
  final bool viewMore;

  const ItemDesc({
    Key? key,
    required this.description,
    required this.viewMore,
  }) : super(key: key);

  @override
  State<ItemDesc> createState() => _ItemDescState();
}

class _ItemDescState extends State<ItemDesc> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 900),
          curve: Curves.easeInOut,
          width: MediaQuery.of(context).size.width - 30,
          height: widget.viewMore ? 370 : 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade800.withOpacity(0.6),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ///[Description]
                SingleChildScrollView(
                  child: Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 16, 
                      height: 1.5,  
                      letterSpacing: 0.5, 
                      color: Colors.white60,
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

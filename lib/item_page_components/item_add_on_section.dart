import 'package:flutter/material.dart';

class ItemAddOnSection extends StatelessWidget {

  const ItemAddOnSection({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add On:",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white70
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow[700],
                ),
                child: Icon(Icons.fastfood_outlined, color: Colors.black, size: 30,),
              ),

              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Icon(Icons.local_pizza_outlined, color: Colors.white, size: 30,)
              ),

              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Icon(Icons.emoji_food_beverage_rounded, color: Colors.white, size: 30,)
              ),

              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Icon(Icons.local_drink_outlined, color: Colors.white, size: 30,)
              ),
            ],
          ),

          SizedBox(height: 20),
          Divider(color: Colors.grey[300]),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              

              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black87,
                ),
                child: Icon(Icons.minimize, color: Colors.white)
              ),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ),

              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black87,
                ),
                child: Icon(Icons.add, color: Colors.white)
              ),

              Container(
                width: 160,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.yellow[700],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ),
            ],
          ),

          SizedBox(height: MediaQuery.of(context).padding.bottom)
        ],
      ),
    );
  }
}

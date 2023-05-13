import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/consts/cart_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/constants.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Widget myAppBAr(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cart(3)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          Row(
            children: [
              Icon(Icons.add_location_alt_outlined),
              5.widthBox,
              Text("To D.I.Khan"),
              5.widthBox,
              Icon(Icons.restore_from_trash_outlined),
              5.widthBox,
              Icon(Icons.chat_bubble_outline),
            ],
          )
        ],
      );
    }
    return SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  myAppBAr(),
                  10.heightBox,
                  Row(
                    children: [
                      OutlinedButton(onPressed: (){},
                          child: Text("All",style:
                          TextStyle(
                              fontWeight:FontWeight.bold,
                              color: Colors.black,),),style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.grey,
                        ),),
                      5.widthBox,
                      OutlinedButton(onPressed: (){}, child: Text("Choice",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),))
                    ],
                  ),
                ],
              ),
            ),
            10.heightBox,
            cart_Product(),
            10.heightBox,
            cart_Product(),
            10.heightBox,
            cart_Product(),
          ],
        ));
    
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderBlock{
  final Icon icon;
  final String title;
  MyOrderBlock({required this.icon,required this.title});
}
List<MyOrderBlock> myOrderBlock=[
  MyOrderBlock(icon: Icon(Icons.payment_outlined), title: "To Pay"),
  MyOrderBlock(icon: Icon(Icons.local_shipping_outlined), title: "To Ship"),
  MyOrderBlock(icon: Icon(Icons.card_membership), title: "Shipped"),
  MyOrderBlock(icon: Icon(Icons.reviews_outlined), title: "To reviews"),
];List<MyOrderBlock> entertainment=[
  MyOrderBlock(icon: Icon(Icons.payment_outlined), title: "To Pay"),
  MyOrderBlock(icon: Icon(Icons.local_shipping_outlined), title: "To Ship"),
  MyOrderBlock(icon: Icon(Icons.card_membership), title: "Shipped"),
];
class con extends GetxController{
  RxBool wishlist=true.obs;
}



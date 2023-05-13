import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/consts/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/profileScreenConstants.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool activeHistory = true;
  con wis=Get.put(con());
  void changeState(state){
    activeHistory = state;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(child: Icon(Icons.person,color: Colors.white,),radius: 18,backgroundColor: Colors.pink,),
                        10.widthBox,
                        Text("PK n",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(child: Icon(Icons.flag,color: Colors.white,),radius: 18,backgroundColor: Colors.pink,),
                        10.widthBox,
                        Icon(Icons.chat_bubble_outline_sharp),
                      ],
                    ),

                  ],
                ),
                5.heightBox,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(children: [
                    Icon(Icons.star,color: Colors.white70,),
                    Text("Silver Member |5% off",style: TextStyle(color: Colors.white70),)
                  ],),
                  height: 32,
                )
              ],
            ),
          ),
          10.heightBox,
          //My Order Sections
          services(title: "My Orders",subtitle: "See all",items: myOrderBlock),
          10.heightBox,
          //Image Section

          Container(
            height: 120,
            color: Colors.white,
              child: Image(image: AssetImage(sw1),)),
          10.heightBox,
          //Payment Discount
          services(title: "Payment & Services",items: entertainment),
          10.heightBox,
          //Entertainment
          services(title: "Entertaimnet",items: myOrderBlock),
          10.heightBox,
          //Services
          services(title: "Services",items: myOrderBlock),
          10.heightBox,

          Container(
            color:Colors.white,
            padding: EdgeInsets.all(10),
            height: Get.height/3+40,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap:() => changeState(true),
                        child: Column(
                          children: [
                            Text("History"),
                            Container(
                              height: 2,
                              width: 50,
                              color: activeHistory == true?Colors.red:Colors.transparent,
                            )
                          ],
                        )
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap:() => changeState(false),
                      child: Column(
                        children: [
                          Text("Whitelist"),
                          Container(
                            height: 2,
                            width: 50,
                            color: activeHistory == false?Colors.red:Colors.transparent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                activeHistory?history():wishlist(),
              ],
            ),
          )
        ],
      )
    );
  }
}

Widget history(){
  return Container(
    height: Get.height/3,
    alignment: Alignment.center,
    child: Text("I am Nasir"),
  );
}
Widget wishlist(){
  return Container(

    height: Get.height/3,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
      ],
    ),
  );
}








// Widgets

Widget services({required String title, String subtitle="",required List items}){
  return Container(
    padding: EdgeInsets.all(10),
    color: Colors.white,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            Text(subtitle)
          ],
        ),
        10.heightBox,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for(var myOrder in items)
              Column(
                children: [
                  myOrder.icon,
                  5.heightBox,
                  Text(myOrder.title),
                ],
              )
          ],
        )
      ],
    ),
  );

}

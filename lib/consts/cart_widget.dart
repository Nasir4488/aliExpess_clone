import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'constants.dart';
Widget cart_Product(){
  return Container(
    padding: EdgeInsets.all(10),
    height: Get.height/3,
    color: Colors.white,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: false, onChanged: (value){},),
                Text("Air Digital Store",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              ],
            ),
            TextButton(onPressed: (){}, child: Text("Get Discount",style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.w500),))
          ],
        ),
        Row(
          children: [
            Container(
              width: Get.width/3-20,
              height: Get.height/4-69,
              child: Image.asset(sw1),
            ),
            Container(

              padding: EdgeInsets.all(10),
              height: Get.height/3-69,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("New y50 tws Wireless airpods bluthod"),
                  TextButton(onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("6",style: TextStyle(color: Colors.white),),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],

                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),

                  ),
                  5.heightBox,
                  Container(
                    width: Get.width/2+44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("US 0.95",style: TextStyle(fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            Icon(Icons.minimize),
                            5.widthBox,
                            Text("1"),
                            5.widthBox,
                            Icon(Icons.add),
                          ],
                        )
                      ],
                    ),
                  ),
                  5.heightBox,
                  Text("US 0.01 for Since added",style: TextStyle(color: Colors.red),),
                  5.heightBox,
                  Text("+5 : shipped here")
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}

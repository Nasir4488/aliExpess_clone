import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:notepad/consts/constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = ["assests/nike.png","assests/slider1.jpg","assests/slider2.jpg"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView(

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi! Sultan !",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Welcome Back",style: TextStyle(fontSize: 16,color: Color(0xff828282)))
                ],
              ),
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage("assests/profile.png"),
              )

            ],
          ),

          20.heightBox,
          VxSwiper.builder(
            height: 150,
            viewportFraction: .9,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            enlargeCenterPage: true,
            itemCount: all.length,
            itemBuilder: (context,int index){
              MySwaiper swaiper=all[index];
              return Container(
                width: 340,

                decoration: BoxDecoration(
                    color: Color(0xff01F9C5),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          alignment: Alignment.bottomRight,
                          height: 120,
                          width: 200,
                          child: Image.asset(swaiper.image,fit: BoxFit.fill,),
                        )
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child:  Container(
                        width: Get.width * 0.6,
                        child: Text(swaiper.description,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                    ),
                      ),),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child:  Text(swaiper.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),).box.height(33).width(131).color(Colors.white)
                        .alignCenter.roundedSM.make(),
                    ),
                  ],
                ),
              );
            },

          ),
          
          20.heightBox,
          Text("Brands",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          10.heightBox,
          Row(
            children: [

             for(var item in items)
               OutlinedButton(
                 style: OutlinedButton.styleFrom(
                     side: BorderSide(
                       color: selectedIndex == items.indexOf(item)? Colors.red:
                       Colors.green,
                       width: 2,
                     )
                 ),
                 onPressed: () {
                   print(items.indexOf(item));
                   setState(() {
                     selectedIndex = items.indexOf(item);
                   });
                 },
                 child: Container(
                   width: 50,
                   height: 40,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     image: DecorationImage(
                       fit: BoxFit.fill,
                       image: AssetImage(item),
                     ),
                   ),
                 ),
               ),
            ],
          ),
          30.heightBox,
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 15,
            runSpacing: 10,
            children: [
              for(var product in products)
              Container(
                width:Get.width/2-30,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(product.img,fit: BoxFit.fill,height: 160,)),
                    Row(
                      children: [
                        Container(
                          width: Get.width/2-30 - 50,
                          child: Text(product.title)
                        ),
                        Text(product.price),
                      ],
                    )

                  ],
                ),
              )
            ]
          ),

        ],
      ),
    );
  }
}

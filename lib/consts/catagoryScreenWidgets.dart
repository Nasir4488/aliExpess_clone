import 'package:flutter/material.dart';
import 'package:notepad/model/catagoryTopSliderModel.dart';

import 'constants.dart';

Widget catagoryScreentopWidget(){
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade400,
      border:OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16)
      ),
      prefixIcon: Icon(Icons.camera_enhance_outlined,color: Colors.black,size: 26,),
      suffixIcon: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        width: 70,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16)

        ),
        child: Icon(Icons.search,color: Colors.white),),
      hintText: "Cuffia bluthooth",
      hintStyle: TextStyle(
        color: Colors.grey,
        fontStyle: FontStyle.italic,
      ),

    ),

  );
}


//Making List of TopScreenSlider Model
List<CatagoryTopSlider> topSlider=[
  CatagoryTopSlider(image: sw1, title: "For You"),
  CatagoryTopSlider(image: sw2, title: "Phones and Telecomnication"),
  CatagoryTopSlider(image: sw3, title: "Coustomer Electronics"),
  CatagoryTopSlider(image: paint, title: "Beauty and Health"),
  CatagoryTopSlider(image: jogging, title: "Computer Office"),
  CatagoryTopSlider(image: party, title: "Home Grade"),
  CatagoryTopSlider(image: sw1, title: "Hair Extensions"),
  CatagoryTopSlider(image: sw2, title: "Hair Extensions"),
  CatagoryTopSlider(image: sw3, title: "Hair Extensions"),
];
List<CatagoryTopSlider> catagoriesBelowTopSlider=[
  CatagoryTopSlider(image: sw1, title: "For You"),
  CatagoryTopSlider(image: sw2, title: "Phones and Telecomnication"),
  CatagoryTopSlider(image: sw3, title: "Coustomer Electronics"),
  CatagoryTopSlider(image: paint, title: "Beauty and Health"),
  CatagoryTopSlider(image: jogging, title: "Computer Office"),
  CatagoryTopSlider(image: jogging, title: "Computer Office"),
  CatagoryTopSlider(image: party, title: "Home Grade"),
  CatagoryTopSlider(image: sw1, title: "Hair Extensions"),
  CatagoryTopSlider(image: sw2, title: "Hair Extensions"),
  CatagoryTopSlider(image: sw2, title: "Hair Extensions"),
  CatagoryTopSlider(image: sw3, title: "Hair Extensions"),
  CatagoryTopSlider(image: sw3, title: "Hair Extensions"),
];

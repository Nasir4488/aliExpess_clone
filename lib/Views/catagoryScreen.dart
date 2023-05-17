import 'package:flutter/material.dart';
import 'package:notepad/consts/catagoryScreenWidgets.dart';
import 'package:notepad/consts/constants.dart';
import 'package:velocity_x/velocity_x.dart';
class CatagoryScreen extends StatefulWidget {
  const CatagoryScreen({Key? key}) : super(key: key);

  @override
  State<CatagoryScreen> createState() => _CatagoryScreenState();
}

class _CatagoryScreenState extends State<CatagoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView(

        children: [
          catagoryScreentopWidget(),
          //TOp Slider
          Container(
           margin: EdgeInsets.only(top: 10),
           width: 120,
           height: 150,
           child: ListView(
             scrollDirection: Axis.horizontal,
             shrinkWrap: true,
             children: [
               for(var item in topSlider)
                 Container(
                   margin: EdgeInsets.symmetric(horizontal:5 ),
                   width: 100,
                   height: 130,
                   child: Column(
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(50.0),
                         child: Image.asset(item.image,height: 100,fit: BoxFit.fill,),
                       ),
                       Text(item.title)
                     ],
                   ),
                 )
             ],
           ),
         ),
          SizedBox(height: 40,),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 40,
            crossAxisAlignment: WrapCrossAlignment.center,

            children: [
              for(var catagory in catagoriesBelowTopSlider)
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width/4-20,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(catagory.image,fit: BoxFit.fill,height: 100,),
                      ),
                      Text(catagory.title)
                    ],
                  ),
                )
            ],
          )






        ],
      ),
    );
  }
}

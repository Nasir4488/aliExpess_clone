import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/Views/homeScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      Get.offAll(()=>HomeScreen());
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assests/splashScreen.png',
            width: 140,
            height: 140,),
          ),
          Image(image: AssetImage('assests/splashScreentitle.png',
          ),
          width: 180,
            height: 35.5,
          )
        ],
      ),


    );
  }
}

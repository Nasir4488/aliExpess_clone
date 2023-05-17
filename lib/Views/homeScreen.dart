import 'package:flutter/material.dart';
import 'package:notepad/Views/HomePage.dart';
import 'package:notepad/Views/cart_Screen.dart';
import 'package:notepad/Views/profileScreen.dart';
import 'package:notepad/Views/catagoryScreen.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  List<Widget> pages =[
    const HomePage(),
    const CartScreen(),
    const CatagoryScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.red,
       type: BottomNavigationBarType.fixed,
       showUnselectedLabels: true,
       unselectedItemColor: Colors.black,
       unselectedIconTheme: const IconThemeData(
         color: Colors.black,
       ),
       showSelectedLabels: false,
       currentIndex: _currentIndex,
       onTap: (int index){
         _currentIndex=index;
         setState(() {
         });
         print(index);
       },
       items: [
         BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "Cart"),
         BottomNavigationBarItem(icon: Icon(Icons.category_rounded),label: "Catagory"),
         BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
       ],
     ),
    );
  }
}

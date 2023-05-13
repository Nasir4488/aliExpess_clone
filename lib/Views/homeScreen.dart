import 'package:flutter/material.dart';
import 'package:notepad/Views/HomePage.dart';
import 'package:notepad/Views/cart_Screen.dart';
import 'package:notepad/Views/profileScreen.dart';
import 'package:notepad/Views/searchScreen.dart';
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
    const SearchScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.black,
       backgroundColor: Colors.pink,
       type: BottomNavigationBarType.fixed,
       showUnselectedLabels: true,
       unselectedItemColor: Colors.white,
       unselectedIconTheme: const IconThemeData(
         color: Colors.white,
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
         BottomNavigationBarItem(icon:  _currentIndex==0? myIcon(Icon(Icons.home)):Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "Cart"),
         BottomNavigationBarItem(icon: Icon(Icons.heart_broken),label: "Favourt"),
         BottomNavigationBarItem(icon: _currentIndex==3? myIcon(Icon(Icons.person)):Icon(Icons.person),label: "Profile"),
       ],
     ),
    );
  }
  Widget myIcon(icon){
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromARGB(133, 16, 30, 211),
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color:  Color.fromARGB(133, 89, 99, 245),
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: icon,
        ),
      ),
    );
  }
}

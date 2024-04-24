import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:siineo/Screens/about.dart';
import 'package:siineo/Screens/cart.dart';
import 'package:siineo/Screens/customersupport.dart';
import 'package:siineo/Screens/homescreen.dart';
import 'package:siineo/Screens/profilelist.dart';
import 'package:siineo/Screens/wishlist.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  List<Widget> className = [
    home_Screen(),
    WishList(),
    My_Cart(),
    support(),
    About_us(),
    Profile_List()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: className[selectedIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 255, 86, 86).withOpacity(0),
        color: Color.fromARGB(255, 63, 163, 5),
        buttonBackgroundColor: Color.fromARGB(255, 255, 121, 68),
        height: 60,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.easeIn,
        index: selectedIndex,
        items: [
          Icon(Icons.dashboard, size: 20, color: Colors.white),
          Icon(
            Icons.favorite_outline,
            size: 20,
            color: Colors.white,
          ),
          Icon(Icons.shopping_cart, size: 20, color: Colors.white),
          Icon(Icons.person, size: 20, color: Colors.white),
          Icon(Icons.info, size: 20, color: Colors.white),
          Icon(Icons.support_agent, size: 20, color: Colors.white),
        ],
        onTap: (index) {
          selectedIndex = index;
          setState(() {
            //change the body
          });
        },
      ),
    );
  }
}

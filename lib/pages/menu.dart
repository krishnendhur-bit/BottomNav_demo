import 'package:flutter/material.dart';
import 'package:navigation_demo/pages/home.dart';
import 'package:navigation_demo/pages/store.dart';
import 'package:navigation_demo/pages/wishlist.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  final List screens=[
    Home(),
    Store(),
    MyWishList()

  ];
  int currentIndexValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screens[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexValue,
        onTap: (index){
          setState(() {
            currentIndexValue=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"),
          BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory),
          label: "Store"),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Wishlist"),

          ],
          ),
      );
     }
}

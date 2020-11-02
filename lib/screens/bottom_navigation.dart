import 'package:flutter/material.dart';
import 'package:task1_3lir/components/cart_item.dart';
import 'package:task1_3lir/screens/account.dart';
import 'package:task1_3lir/screens/favourite.dart';
import 'package:task1_3lir/screens/home.dart';
import 'package:task1_3lir/screens/my_cart.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedPageIndex=0;
  List<Widget> _pages = [HomeScreen(),Favourite(),MyCart(),Account()] ;
  void _selectPage (int index)=>setState(() {_selectedPageIndex=index; });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap:_selectPage,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.orange[800],
        unselectedItemColor: Colors.grey,
        elevation: 0.1,
        backgroundColor: Colors.grey[50],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 28,),
            title: Text('',style: TextStyle(fontSize: 0),), ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,size: 28),
            title: Text('',style: TextStyle(fontSize: 0),), ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart,size: 28),
            title: Text('',style: TextStyle(fontSize: 0),), ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin,size: 28),
            title: Text('',style: TextStyle(fontSize: 0),), ),
        ],
      ),

    );
  }
}

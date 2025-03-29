import 'package:app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  static const String home = '/nav_bar';
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedindex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedindex],
      bottomNavigationBar: NavigationBar(
        
        selectedIndex: _selectedindex,
        onDestinationSelected: (int index) {
          _selectedindex=index;
          setState(() {
            
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),

          NavigationDestination(icon: Icon(Icons.category), label: 'Category'),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'shopcart',
          ),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'favorite'),
        ],
      ),
    );
  }
}

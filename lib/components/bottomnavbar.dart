import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/colors.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(27.0))),
      child: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: [
          const BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
              backgroundColor: kPrimaryColor),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: 'Booked'),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: 'Categories'),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: 'Profile'),
        ],
      ),
    );
  }
}

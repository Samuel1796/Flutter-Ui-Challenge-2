import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(245, 247, 249, 1),
      padding: const EdgeInsets.all(4),
      child: GNav(
        color: Colors.black,
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.red),
        tabBackgroundColor: Colors.red,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabBorderRadius: 30,
        gap: 6,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 10), // Adjust padding
          ),
          GButton(
            icon: Icons.auto_graph,
            text: "Movies",
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 10), // Adjust padding
          ),
          GButton(
            icon: Icons.theaters,
            text: "Theater",
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 10), // Adjust padding
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 10), // Adjust padding
          ),
        ],
      ),
    );
  }
}

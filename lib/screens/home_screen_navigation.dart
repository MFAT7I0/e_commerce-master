import 'package:first_broject/favorite_screens/first_category.dart';
import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'explore_screen.dart';
import 'offer_screen.dart';
import 'profile_screen.dart';
import 'home_screen.dart';

class HomeScreenNavigation extends StatefulWidget {
  HomeScreenNavigation({super.key});

  @override
  State<HomeScreenNavigation> createState() => _HomeScreenNavigationState();
}

class _HomeScreenNavigationState extends State<HomeScreenNavigation> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    // ExploreScreen(),
    CartScreen(),
    OfferScreen(),
    ProfileScreen(),
   // FirstCategory()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color(0xff9098B1),
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                  color: Color(0xff9098B1),
                ),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xff9098B1),
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_offer_outlined,
                  color: Color(0xff9098B1),
                ),
                label: 'Offer'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Color(0xff9098B1),
                ),
                label: 'Account'),
          ],
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

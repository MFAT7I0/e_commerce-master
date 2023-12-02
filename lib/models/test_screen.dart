

import 'package:flutter/material.dart';



class HomeScreen2 extends StatefulWidget {
  HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int currentIndex=0;

List<Widget> screens=[
  HomeScreenTest(),
  ExploreScreenTest(),
  CartScreenTest(),
  OfferScreenTest(),
  ProfileScreenTest(),
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body:screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'home'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded),
                label: 'Explore'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
                label: 'Cart'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer_sharp),
                label: 'Offer'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),
                label: 'Account'
            ),


          ],
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              currentIndex=index;
            });
          },
        ),
      ),
    );
  }
}
















class HomeScreenTest extends StatelessWidget {
  const HomeScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen Test'),
    )
    ;
  }
}

class ExploreScreenTest extends StatelessWidget {
  const ExploreScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Explore Screen Test'),
    )
    ;
  }
}

class CartScreenTest extends StatelessWidget {
  const CartScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart Screen Test'),
    )
    ;
  }
}

class ProfileScreenTest extends StatelessWidget {
  const ProfileScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen Test'),
    )
    ;
  }
}
class OfferScreenTest extends StatelessWidget {
  const OfferScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Offer Screen Test'),
    );
  }
}

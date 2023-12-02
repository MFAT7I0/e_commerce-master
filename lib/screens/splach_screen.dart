import 'package:flutter/material.dart';
import 'home_screen_navigation.dart';



class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});
  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration
      (seconds: 2),(){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
        return HomeScreenNavigation();
      }
      ), (route) => false);

    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff40bfff),
        body: SafeArea(
          child: Center(
            child: Image.asset(
              'assets/images/app_logo.png',
            ),
          ),
        ),
      ),
    );
  }
}

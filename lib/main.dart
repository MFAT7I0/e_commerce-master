import 'package:first_broject/favorite_screens/first_category.dart';
import 'package:flutter/material.dart';
import 'screens/splach_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true,),
      home: SplachScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
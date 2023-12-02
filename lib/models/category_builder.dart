
import 'package:first_broject/favorite_screens/first_category.dart';
import 'package:first_broject/repository/home_repo.dart';
import 'package:flutter/material.dart';

class BuildCategory extends StatelessWidget {
  final String image;
  final String name;
  final int id;

  const BuildCategory({super.key, required this.image, required this.name , required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 12),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstCategory(id : id)),);
            },
            child: CircleAvatar(
              backgroundColor: Color(0xffEBF0FF),
              radius: 36,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: Image.network(
                  '$image',
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
          Text(
            '$name',
            style: TextStyle(
                color: Color(0xff9098B1),
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}



class CategoriesItems {
  final String image;
  final String name;

  CategoriesItems({required this.image, required this.name});
}

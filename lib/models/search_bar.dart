import 'package:flutter/material.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.7,
      height: 46,
      margin: EdgeInsets.only(top: 12, left: 9, right: 3),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          label: Text(
            'Search Product',
            style: TextStyle(
                fontSize: 15,
                color: Color(0xFF9098B1),
                fontWeight: FontWeight.w400),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.cyan,
            size: 25,
          ),
        ),
      ),
    );
  }
}


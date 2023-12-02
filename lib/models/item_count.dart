import 'package:flutter/material.dart';
class BuildItemCount extends StatelessWidget {
  const BuildItemCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(5),bottomLeft: Radius.circular(5)),
                color: Colors.white,
                border:Border.all(color: Color(0xffEBF0FF,),width: 2)
            ),
            height: 24,
            width: 25,
            child: Image.asset('assets/images/icons/Minus.png',
              height: 16,
              width: 16,
              color: Color(0xff9098B1),

            )
        ),
        Container(
          width: 30,
          height: 24,
          color: Color(0xffEBF0FF),
          child: Center(
            child: Text('1',
              style: TextStyle(
                color: Color(0xff9098B1),
                fontSize: 15,
              ),
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight:Radius.circular(5),bottomRight: Radius.circular(5)),
                color: Colors.white,
                border:Border.all(color: Color(0xffEBF0FF,),width: 2)

            ),
            height: 24,
            width: 25,
            child: Image.asset('assets/images/icons/Plus.png',
              height: 16,
              width: 16,
              color: Color(0xff9098B1),

            )
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';

import 'item_count.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Color(0xffEBF0FF)),
        ),
        height: 104,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset(
                'assets/images/shoes Product (3).png',
                height: 72,
                width: 72,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Nike Air Zoom Pegasus\n36 Miami',
                    style: TextStyle(
                        color: Color(0xff223263),
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        letterSpacing: 0.5),
                  ),
                  Text(
                    '299.43',
                    style: TextStyle(
                        color: Color(0xff40BFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,top: 10),
                  child: Row(

                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color(0xffFB7181),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          'assets/images/icons/trash.png',
                          height: 18,
                          width: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: BuildItemCount(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

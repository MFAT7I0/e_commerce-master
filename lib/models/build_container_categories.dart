import 'package:flutter/material.dart';

class BuildContainerItemsForCategories extends StatelessWidget {
  final String image;
  final String text;
  final double price;
  final double ?oldPrice;
  final int ?discount;


  const BuildContainerItemsForCategories({super.key, required this.image, required this.text, required this.price, required this.oldPrice, required this.discount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
                border: Border.all(color: Color(0XFFEBF0FF))
            ),
            width: 141,
            height: 238,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Image(
                    image: NetworkImage(image),
                    height: 109,
                    width: 109,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                      child: Text(
                        '$text',
                        style: TextStyle(
                            color: Color(0XFF223263),
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 16),
                      child: Text(
                        '$price',
                        style: TextStyle(
                            color: Color(0xff40BFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 8),
                          child: Text(
                            '$oldPrice',
                            style: TextStyle(
                                color: Color(0xff9098B1),
                                fontWeight: FontWeight.w400,
                                fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Text(
                            '$discount% Off',
                            style: TextStyle(
                                color: Color(0xffFB7181),
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        // Image.asset('assets/images/icons/trash.png')
                        Icon(Icons.access_alarm
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ContainerItemsF{
  final String image;
  final String text;
  final double price;
  ContainerItemsF({required this.image,required this.text,required this.price});
}

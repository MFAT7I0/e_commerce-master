import 'package:first_broject/models/buildSlider.dart';
import 'package:first_broject/models/container_builder.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  OfferScreen({super.key});
  final List<ContainerItems> container = [
    ContainerItems(
        image: 'assets/images/shoes image Product.png',
        text: 'FS - Nike Air Max 270 React',
        price: 299.43),
    ContainerItems(
        image: 'assets/images/bag image Product .png',
        text: 'FS - QUILTED MAXI CROSS',
        price: 299.43),
    ContainerItems(
        image: 'assets/images/shoes Product (3).png',
        text: 'FS - Nike Air Max 270 React',
        price: 299.43),
    ContainerItems(
        image: 'assets/images/red bag Product (4).png',
        text: 'Nike Air Max 270 React ENG',
        price: 299.43),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 26, bottom: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 52.0),
                    child: Text(
                      'Super Flash Sale',
                      style: TextStyle(
                        color: Color(0XFF223263),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Icon(
                      Icons.search_rounded,
                      color: Color(0xff9098B1),
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 1),
              child: BuildSlider(image: 'assets/images/slider Image.png'),
            ),
            SizedBox(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: container.length,
                itemBuilder: (context, index) {
                  return BuildContainerItems(
                    image: container[index].image,
                    text: container[index].text,
                    price: container[index].price,
                    oldPrice: null,
                    discount: null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

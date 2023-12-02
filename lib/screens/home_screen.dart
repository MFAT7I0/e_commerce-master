import 'package:first_broject/modeling/category_model.dart';
import 'package:first_broject/modeling/home_model.dart';
import 'package:first_broject/modeling/productCategoryModel.dart';
import 'package:first_broject/repository/categories_repository.dart';
import 'package:first_broject/repository/home_repo.dart';
import 'package:flutter/material.dart';

import '../models/buildSlider.dart';
import '../models/category_builder.dart';
import '../models/container_builder.dart';
import '../models/search_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final List<CategoriesItems> category = [
  //   CategoriesItems(image: 'assets/images/shirt.png', name: 'Man Shirt'),
  //   CategoriesItems(image: 'assets/images/icons/dress.png', name: 'Dress'),
  //   CategoriesItems(image: 'assets/images/icons/man bag.png', name: 'Man Work Equipment'),
  //   CategoriesItems(image: 'assets/images/icons/woman bag.png', name: 'Woman Bag'),
  //   CategoriesItems(image: 'assets/images/shirt.png', name: 'Man Clothes')
  // ];
  //
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
  late Future<CategoriesModel> categoryData;
  late Future<HomeModel> homeData;
  // late Future<HomeModel> homeData;

  @override
  void initState() {
    categoryData = CategoriesRepository().getCategories();
    homeData = HomeRepo().getProductsCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // top widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildSearchBar(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                    icon: Icon(Icons.favorite_border_outlined),
                    onPressed: () {},
                    iconSize: 25,
                    color: Color(0xFF9098B1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                    icon: Icon(Icons.notifications_none_outlined),
                    onPressed: () {},
                    iconSize: 25,
                    color: Color(0xFF9098B1),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              height: 20,
              color: Color(0xffEBF0FF),
            ),

            BuildSlider(image: 'assets/images/slider Image.png'),

            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF223263)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      child: Text(
                        'More Category',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF40BFFF)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            FutureBuilder<CategoriesModel>(
                future: categoryData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    final categories = snapshot.data!;

                    return Container(
                      height: 100,
                      child: ListView.builder(
                        itemCount: categories.data.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              BuildCategory(
                                image: categories.data.data[index].image,
                                name: categories.data.data[index].name,
                                id: categories.data.data[index].id,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }

                  if (snapshot.hasError) {
                    return Text('There is an error try again');
                  }
                  return SizedBox();
                }),

            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF223263),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      child: Text(
                        'See More',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF40BFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            FutureBuilder<HomeModel>(
                future: homeData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    print('There is an error please try again');
                  }
                  if (snapshot.hasData) {
                    final flashSale = snapshot.data!;
                    final flashSaleProducts = snapshot.data!.data.products;
                    return SizedBox(
                      height: 240,
                      child: ListView.builder(
                        itemCount: flashSale.data.products.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return BuildContainerItems(
                            image: flashSaleProducts[index].image,
                            text: flashSaleProducts[index].name,
                            price: flashSaleProducts[index].oldPrice,
                            oldPrice: flashSaleProducts[index].oldPrice,
                            discount: flashSaleProducts[index].discount,
                          );
                        },
                      ),
                    );
                  }
                  return SizedBox(
                    child: Text('error'),
                  );
                }),

            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Mega Sale",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF223263),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      child: Text(
                        'See More',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF40BFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: container.length,
                scrollDirection: Axis.horizontal,
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
            Padding(
              padding: const EdgeInsets.only(
                top: 9.0,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child:
                  Image.asset('assets/images/Recommended Product Banner.png'),
            ),
            SizedBox(
              child: FutureBuilder<HomeModel>(
                  future: HomeRepo().getProductsCategory(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final data = snapshot.data;
                      final productData = data!.data.products;
                      return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: data.data.products.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return BuildContainerItems(
                              image: productData[index].image,
                              text: productData[index].name,
                              price: productData[index].price,
                              oldPrice: productData[index].oldPrice,
                              discount: productData[index].discount,
                            );
                          });
                    }
                    return SizedBox(
                      child: Text('error'),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

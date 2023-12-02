// import 'package:flutter/material.dart';
// import '../models/category_builder.dart';
// import '../models/search_bar.dart';
//
// class ExploreScreen extends StatelessWidget {
//   const ExploreScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 BuildSearchBar(),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Icon(
//                     Icons.favorite_border_outlined,
//                     color: Color(0xFF9098B1),
//                     size: 25,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Icon(
//                     Icons.notifications_none_outlined,
//                     color: Color(0xFF9098B1),
//                     size: 25,
//                   ),
//                 )
//               ],
//             ),
//             Divider(
//               height: 20,
//               thickness: 1,
//               color: Color(0xffEBF0FF),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16.0),
//               child: Text('Man Fashion',
//               style: TextStyle(
//                 color: Color(0xff223263),
//                 fontWeight: FontWeight.w700,
//                 fontSize: 14,
//                 letterSpacing: 0.5
//               ),
//               ),
//             ),
//             Row(
//               children: [
//                 BuildCategory(image: 'assets/images/shirt.png',name: 'Man Shirt', id: null,),
//                 BuildCategory(image: 'assets/images/category/work.png',name: 'Man Work\nequipment', id: null,),
//                 BuildCategory(image: 'assets/images/category/man T shirt.png',name: 'Man T-Shirt', id: null,),
//                 BuildCategory(image: 'assets/images/category/man pants.png',name: 'Man Shoes', id: null,)
//               ],
//             ),
//             SizedBox(height: 16,),
//             Row(children: [
//               BuildCategory(image: 'assets/images/category/man pants.png',name: 'Man Pants', id: null,),
//               BuildCategory(image: 'assets/images/category/under wear.png',name: 'Man Underwear', id: null,),
//
//             ],
//             ),
//             SizedBox(height: 24,),
//             Padding(
//               padding: const EdgeInsets.only(left: 16.0),
//               child: Text('Woman Fashion',
//                 style: TextStyle(
//                     color: Color(0xff223263),
//                     fontWeight: FontWeight.w700,
//                     fontSize: 14,
//                     letterSpacing: 0.5
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 BuildCategory(image: 'assets/images/category/dress.png',name: 'Dress', id: null,),
//                 BuildCategory(image: 'assets/images/category/woman t shirt.png',name: 'Woman T-shirt', id: null,),
//                 BuildCategory(image: 'assets/images/category/woman pants.png',name: 'Woman Pants', id: null,),
//                 BuildCategory(image: 'assets/images/category/skirt.png',name: 'Skirt', id: null,),
//               ],
//             ),
//             Row(
//               children: [
//                 BuildCategory(image: 'assets/images/category/woman bag.png',name: 'Woman Bag', id: null,),
//                 BuildCategory(image: 'assets/images/category/woman shoes.png',name: 'High Heels', id: null,),
//                 BuildCategory(image: 'assets/images/category/bikini.png',name: 'Bikini', id: null,),
//
//
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
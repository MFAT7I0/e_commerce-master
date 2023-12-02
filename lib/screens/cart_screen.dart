import 'package:flutter/material.dart';
import '../models/build_cart_container.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 26.0, bottom: 28, left: 16),
            child: Text(
              'Your Cart',
              style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.08),
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
          CartContainer()
        ],
      ),
    );
  }
}

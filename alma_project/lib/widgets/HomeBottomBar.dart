import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Icon(
                Icons.home,
                color: Color(0xFFF7CA0F),
                size: 32,
              ),
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Icon(
                Icons.search,
                color: Color(0xFFF7CA0F),
                size: 32,
              ),
              Text(
                'Explore',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'cartPage');
            },
            child: const Column(
              children: [
                Icon(
                  CupertinoIcons.cart,
                  color: Color(0xFFF7CA0F),
                  size: 32,
                ),
                Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Column(
            children: [
              Icon(
                Icons.person,
                color: Color(0xFFF7CA0F),
                size: 32,
              ),
              Text(
                'Accaunt',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

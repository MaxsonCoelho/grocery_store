import 'package:flutter/material.dart';
import 'package:grocery_store/src/config/custom_colors.dart';
import 'package:badges/badges.dart' as packageBadge;

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(TextSpan(
            style: const TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                  text: 'Grocery',
                  style: TextStyle(color: CustomColors.customSwatchColor)),
              TextSpan(
                  text: 'Grocery',
                  style: TextStyle(color: CustomColors.customContrastColor)),
            ])),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15
            ),
            child: GestureDetector(
              onTap: () {},
              child: packageBadge.Badge(
              badgeStyle: packageBadge.BadgeStyle(
                padding: const EdgeInsets.all(8),
                badgeColor: CustomColors.customContrastColor,
              ),
                badgeContent: const Text('2',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  color: CustomColors.customSwatchColor,
                  iconSize: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

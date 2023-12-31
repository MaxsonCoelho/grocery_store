import 'package:flutter/material.dart';
import 'package:grocery_store/src/config/custom_colors.dart';
import 'package:badges/badges.dart' as packageBadge;
import 'package:grocery_store/src/config/app_data.dart' as appData;
import 'package:grocery_store/src/pages/cartTab/cart_tab.dart';
import 'package:grocery_store/src/pages/homeTab/components/item_tile.dart';

import 'components/category_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Frutas';

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
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const CartTab();
                    },
                  ),
                );
              },
              child: packageBadge.Badge(
                badgeStyle: packageBadge.BadgeStyle(
                  padding: const EdgeInsets.all(8),
                  badgeColor: CustomColors.customContrastColor,
                ),
                badgeContent: const Text(
                  '2',
                  style: TextStyle(fontSize: 14, color: Colors.white),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: Icon(
                  Icons.search,
                  color: CustomColors.customContrastColor,
                  size: 22,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = appData.categories[index];
                    });
                  },
                  category: appData.categories[index],
                  isSelected: appData.categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: appData.categories.length,
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: appData.items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: appData.items[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

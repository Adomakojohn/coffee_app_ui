import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/product.dart';
import 'widgets/category_tab.dart';
import 'widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = 0;

  final List<Category> categories = [
    Category(name: 'Coffee', imagePath: 'assets/images/category_img1.png'),
    Category(name: 'Beer', imagePath: 'assets/images/category_img2.png'),
    Category(name: 'Wine Bar', imagePath: 'assets/images/Category_img3.png'),
    Category(name: 'Cafe', imagePath: 'assets/images/category_img4.png'),
  ];

  final List<Product> products = [
    Product(
        name: 'Chai Latte', imagePath: 'assets/images/coff1.png', price: 85.0),
    Product(
        name: 'Matcha Latte',
        imagePath: 'assets/images/coffee_img2.png',
        price: 22.0),
    Product(
        name: 'Red Eye Coffee',
        imagePath: 'assets/images/coffee_img3.png',
        price: 60.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          const Positioned(
            top: -240,
            left: 10,
            right: 10,
            child: Image(
              image: AssetImage('assets/images/lightmode_authbackground.png'),
            ),
          ),
          const Positioned(
            top: 110,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.png'),
                ),
                Icon(Icons.menu, size: 28, color: Color(0xFF131A2E)),
              ],
            ),
          ),
          const Positioned(
            top: 170,
            left: 25,
            right: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hi, ',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF131A2E),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'William',
                  style: TextStyle(
                    fontSize: 32,
                    color: Color(0xFF131A2E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 215,
            left: 25,
            right: 25,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                  ),
                  padding: const EdgeInsets.only(left: 16, right: 56),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Color(0xFFBDBDBD)),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Coffee shop, beer & wine...',
                            hintStyle: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 4,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF55433C),
                      shape: BoxShape.circle,
                    ),
                    child:
                        const Icon(Icons.tune, color: Colors.white, size: 22),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 38,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return CategoryTab(
                        label: category.name,
                        imagePath: category.imagePath,
                        isSelected: selectedCategoryIndex == index,
                        onTap: () {
                          setState(() {
                            selectedCategoryIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 7),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ProductCard(
                        name: product.name,
                        imagePath: product.imagePath,
                        price: product.price,
                        isHighlighted: index == 0,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

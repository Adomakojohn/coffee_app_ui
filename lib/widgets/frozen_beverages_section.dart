import 'package:flutter/material.dart';
import '../models/product.dart';

class FrozenBeveragesSection extends StatelessWidget {
  final List<Product> products;

  const FrozenBeveragesSection({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          // final isHighlighted = index == 0;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 240,
              height: 270,
              child: Stack(
                children: [
                  Positioned(
                    top: 2,
                    child: ClipPath(
                      clipper: CardClipper(),
                      child: Container(
                        width: 240,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 242, 239, 239),
                          borderRadius: BorderRadius.circular(24),
                          // border: Border.all(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 40,
                    child: Image.asset(
                      product.imagePath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: const Color(0xFFA97C37),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double circleRadius = 40;
    double circleCenterX = size.width * 0.25;
    double circleCenterY = size.height * 0.5;

    // Create the main rectangle path
    Path mainPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    // Create the circle path
    Path circlePath = Path()
      ..addOval(Rect.fromCircle(
        center: Offset(circleCenterX, circleCenterY),
        radius: circleRadius,
      ));

    // Combine the paths to create the cutout
    return Path.combine(PathOperation.difference, mainPath, circlePath);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

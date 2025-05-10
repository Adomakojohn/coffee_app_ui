import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final double price;
  final bool isHighlighted;

  const ProductCard({
    required this.name,
    required this.imagePath,
    required this.price,
    this.isHighlighted = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: ClipPath(
              clipper: CardClipper(),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: isHighlighted
                      ? const Color(0xFF55433C)
                      : const Color(0xFFDCDCDC),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 60, left: 16, right: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: isHighlighted ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: isHighlighted
                              ? Colors.white
                              : const Color(0xFF55433C),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                height: 60,
                width: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double cutoutWidth = 80; // wider U
    double cutoutDepth = 56; // deeper U
    double cutoutRadius = cutoutWidth / 2;
    double cutoutCenterX = size.width / 2;

    Path path = Path();
    path.moveTo(0, 0);
    // Left edge to start of U
    path.lineTo(cutoutCenterX - cutoutRadius, 0);
    // Down the left side of the U
    path.lineTo(cutoutCenterX - cutoutRadius, cutoutDepth - cutoutRadius);
    // Bottom of the U (semi-circle)
    path.arcToPoint(
      Offset(cutoutCenterX + cutoutRadius, cutoutDepth - cutoutRadius),
      radius: Radius.circular(cutoutRadius),
      clockwise: false,
    );
    // Up the right side of the U
    path.lineTo(cutoutCenterX + cutoutRadius, 0);
    // Right edge
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

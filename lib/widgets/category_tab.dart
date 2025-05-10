import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryTab({
    required this.label,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF55433C) : Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Image.asset(imagePath, height: 20, width: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

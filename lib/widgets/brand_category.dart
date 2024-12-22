import 'package:flutter/material.dart';

class BrandCategories extends StatelessWidget {
  const BrandCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final brands = [
      {'name': 'Tesla', 'icon': Icons.electric_car},
      {'name': 'Lamborghini', 'icon': Icons.directions_car},
      {'name': 'BMW', 'icon': Icons.directions_car},
      {'name': 'More', 'icon': Icons.more_horiz},
    ];

    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    brands[index]['icon'] as IconData,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  brands[index]['name'] as String,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
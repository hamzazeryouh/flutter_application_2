import 'package:flutter/material.dart';

class CarTypeSelector extends StatelessWidget {
  const CarTypeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Type of Cars',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          children: [
            FilterChip(
              label: const Text('All Cars'),
              selected: true,
              onSelected: (bool selected) {},
              backgroundColor: Colors.grey[200],
              selectedColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white),
            ),
            FilterChip(
              label: const Text('Regular Cars'),
              selected: false,
              onSelected: (bool selected) {},
              backgroundColor: Colors.grey[200],
            ),
            FilterChip(
              label: const Text('Luxury Cars'),
              selected: false,
              onSelected: (bool selected) {},
              backgroundColor: Colors.grey[200],
            ),
          ],
        ),
      ],
    );
  }
}
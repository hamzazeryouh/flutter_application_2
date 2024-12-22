import 'package:flutter/material.dart';

class FuelTypeSelector extends StatelessWidget {
  const FuelTypeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final fuelTypes = ['Petrol', 'Diesel', 'Electric', 'Hybrid'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fuel Type',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: fuelTypes.map((type) {
            return FilterChip(
              label: Text(type),
              selected: type == 'Electric',
              onSelected: (bool selected) {},
              backgroundColor: Colors.grey[200],
              selectedColor: Colors.black,
              labelStyle: TextStyle(
                color: type == 'Electric' ? Colors.white : Colors.black,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
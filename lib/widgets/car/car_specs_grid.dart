import 'package:flutter/material.dart';

class CarSpecsGrid extends StatelessWidget {
  const CarSpecsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: const [
        SpecItem(
          icon: Icons.speed,
          label: '4 Seats',
          value: '0-60mph',
        ),
        SpecItem(
          icon: Icons.local_gas_station,
          label: '470 Miles',
          value: 'Range',
        ),
        SpecItem(
          icon: Icons.auto_awesome,
          label: 'Auto Parking',
          value: 'Features',
        ),
      ],
    );
  }
}

class SpecItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const SpecItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
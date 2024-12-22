import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_rental/models/filter_state.dart';

class RentalTimeSelector extends StatelessWidget {
  const RentalTimeSelector({super.key});

  Future<void> _selectTime(BuildContext context, bool isPickup) async {
    final filterState = Provider.of<FilterState>(context, listen: false);
    final TimeOfDay initialTime = isPickup ? filterState.pickupTime : filterState.dropoffTime;

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (picked != null) {
      if (isPickup) {
        filterState.updatePickupTime(picked);
      } else {
        filterState.updateDropoffTime(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterState>(
      builder: (context, filterState, child) {
        return Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _selectTime(context, true),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pick up',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        filterState.pickupTime.format(context),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: GestureDetector(
                onTap: () => _selectTime(context, false),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Drop off',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        filterState.dropoffTime.format(context),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
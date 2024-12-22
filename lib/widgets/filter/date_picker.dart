import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_rental/models/filter_state.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterState>(
      builder: (context, filterState, child) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: () {},
                  ),
                  Text(
                    filterState.selectedDate?.toString().split(' ')[0] ?? 'Select Date',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CalendarDatePicker(
                initialDate: filterState.selectedDate ?? DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                onDateChanged: (DateTime date) {
                  filterState.updateDate(date);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
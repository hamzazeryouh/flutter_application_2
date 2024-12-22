import 'package:car_rental/widgets/filter/location_input.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/widgets/filter/filter_header.dart';
import 'package:car_rental/widgets/filter/date_picker.dart';
import 'package:car_rental/widgets/filter/price_range_slider.dart';
import 'package:car_rental/widgets/filter/rental_time_selector.dart';
import 'package:car_rental/widgets/filter/car_type_selector.dart';
import 'package:car_rental/widgets/filter/color_selector.dart';
import 'package:car_rental/widgets/filter/capacity_selector.dart';
import 'package:car_rental/widgets/filter/fuel_type_selector.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const FilterHeader(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Time',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const DatePicker(),
                    const SizedBox(height: 24),
                    const Text(
                      'Price range',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const PriceRangeSlider(),
                    const SizedBox(height: 24),
                    const Text(
                      'Rental Time',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const RentalTimeSelector(),
                    const SizedBox(height: 24),
                    const Text(
                      'Car Location',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const LocationInput(),
                    const SizedBox(height: 24),
                    const CarTypeSelector(),
                    const SizedBox(height: 24),
                    const ColorSelector(),
                    const SizedBox(height: 24),
                    const CapacitySelector(),
                    const SizedBox(height: 24),
                    const FuelTypeSelector(),
                    const SizedBox(height: 32),
                    AuthButton(
                      label: 'Show 150+ Cars',
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
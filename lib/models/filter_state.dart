import 'package:flutter/material.dart';

class FilterState extends ChangeNotifier {
  DateTime? selectedDate;
  TimeOfDay pickupTime = const TimeOfDay(hour: 10, minute: 0);
  TimeOfDay dropoffTime = const TimeOfDay(hour: 22, minute: 0);
  RangeValues priceRange = const RangeValues(20, 80);
  String? selectedCarType;
  Color? selectedColor;
  int selectedCapacity = 4;
  String? selectedFuelType;
  String location = '';

  void updateDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
  }

  void updatePickupTime(TimeOfDay time) {
    pickupTime = time;
    notifyListeners();
  }

  void updateDropoffTime(TimeOfDay time) {
    dropoffTime = time;
    notifyListeners();
  }

  void updatePriceRange(RangeValues range) {
    priceRange = range;
    notifyListeners();
  }

  void updateCarType(String? type) {
    selectedCarType = type;
    notifyListeners();
  }

  void updateColor(Color? color) {
    selectedColor = color;
    notifyListeners();
  }

  void updateCapacity(int capacity) {
    selectedCapacity = capacity;
    notifyListeners();
  }

  void updateFuelType(String? type) {
    selectedFuelType = type;
    notifyListeners();
  }

  void updateLocation(String newLocation) {
    location = newLocation;
    notifyListeners();
  }

  void reset() {
    selectedDate = null;
    pickupTime = const TimeOfDay(hour: 10, minute: 0);
    dropoffTime = const TimeOfDay(hour: 22, minute: 0);
    priceRange = const RangeValues(20, 80);
    selectedCarType = null;
    selectedColor = null;
    selectedCapacity = 4;
    selectedFuelType = null;
    location = '';
    notifyListeners();
  }

  Map<String, dynamic> toJson() {
    return {
      'date': selectedDate?.toIso8601String(),
      'pickup_time': '${pickupTime.hour}:${pickupTime.minute}',
      'dropoff_time': '${dropoffTime.hour}:${dropoffTime.minute}',
      'price_min': priceRange.start,
      'price_max': priceRange.end,
      'car_type': selectedCarType,
      'color': selectedColor?.value,
      'capacity': selectedCapacity,
      'fuel_type': selectedFuelType,
      'location': location,
    };
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_rental/routes/app_routes.dart';
import 'package:car_rental/models/filter_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FilterState(),
      child: const CarRentalApp(),
    ),
  );
}

class CarRentalApp extends StatelessWidget {
  const CarRentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qent Car Rental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: AppRoutes.onboarding,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
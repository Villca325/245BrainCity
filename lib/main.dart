import 'package:flutter/material.dart';
import 'view/city_map_view.dart';

void main() {
  runApp(const BrainCityApp());
}

class BrainCityApp extends StatelessWidget {
  const BrainCityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brain City',
      debugShowCheckedModeBanner: false,

      home: const CityMapView(),
    );
  }
}

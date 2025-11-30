import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/city_controller.dart';
import 'view/menu_view.dart';
import 'view/developers_view.dart';
import 'view/rules_view.dart';
import 'view/city_map_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CityController(),
      child: const BrainCityApp(),
    ),
  );
}
class BrainCityApp extends StatelessWidget {
  const BrainCityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brain City',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const PaginaMenu(),
        '/desarrolladores': (_) => const PaginaDesarrolladores(),
        '/reglas': (_) => const PaginaReglas(),
        '/mapa': (_) => const PaginaMapa(),
      },
    );
  }
}

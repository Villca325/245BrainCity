import 'package:flutter/material.dart';

//Equipo Docmasita: todas las views menos el de quiz
class CityMapView extends StatelessWidget {
  const CityMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapa de Brain City"),
        actions: [IconButton(icon: const Icon(Icons.info), onPressed: () {})],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "mapa de la ciudad",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("hola"),
          ],
        ),
      ),
    );
  }
}

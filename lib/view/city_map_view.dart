import 'package:braincity/view/image_painted.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/boton_atras.dart';
import '../controllers/city_controller.dart';

class PaginaMapa extends StatelessWidget {
  const PaginaMapa({super.key});

  @override
  Widget build(BuildContext context) {
    final cityController = Provider.of<CityController>(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(color: const Color(0xFF1A1025)),
          const ImagePainted(),
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Text(
                'Puntuación Total: ${cityController.puntos}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const BotonAtras(),
        ],
      ),
    );
  }
}
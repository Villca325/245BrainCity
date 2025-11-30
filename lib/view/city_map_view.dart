import 'package:braincity/view/image_painted.dart';
import 'package:flutter/material.dart';
import 'widgets/boton_atras.dart';

class PaginaMapa extends StatelessWidget {
  const PaginaMapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // <--- Usas Stack
        children: [
          Container(color: const Color(0xFF1A1025)),
          ImagePainted(),
          const BotonAtras(),
        ],
      ),
    );
  }
}

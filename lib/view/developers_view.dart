// Archivo: lib/pagina_desarrolladores.dart
import 'package:flutter/material.dart';
import 'widgets/boton_atras.dart';

class PaginaDesarrolladores extends StatelessWidget {
  const PaginaDesarrolladores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. FONDO (Violeta Oscuro)
          Container(color: const Color(0xFF1A1025)),

          // 2. CONTENIDO CON SCROLL VERTICAL
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 80), // Espacio para la barra superior
                // TÍTULO
                const Text(
                  "NUESTRO EQUIPO",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30), // Separación después del título
                Image.asset(
                  'assets/images/manadaCORP.jpg',
                  width: 300,
                  height: 260,
                ),
                const Text(
                  "Manada CORP",
                  style: TextStyle(
                    color: Color.fromARGB(255, 223, 223, 223),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tarjeta(
                      nombre: "Elizeo Condori",
                      rol: "Programador",
                      rutaImagen: "",
                    ),
                    tarjeta(
                      nombre: "Joel Flores",
                      rol: "UI Designer",
                      rutaImagen: "assets/images/desarrollador2.png",
                    ),
                  ],
                ),

                // --- FILA 2 ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tarjeta(
                      nombre: "Hernan Laruta",
                      rol: "Desarrollador",
                      rutaImagen: "",
                    ),
                    tarjeta(
                      nombre: "Dylan Salazar",
                      rol: "Desarrollador",
                      rutaImagen: "",
                    ),
                  ],
                ),

                // --- FILA 3 ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tarjeta(
                      nombre: "Franco Villavicencio",
                      rol: "Desarrollador",
                      rutaImagen: "assets/images/desarrollador5.png",
                    ),
                    tarjeta(
                      nombre: "Randoll Villca",
                      rol: "Desarrollador",
                      rutaImagen: "",
                    ),
                  ],
                ),

                // AQUÍ ESTABA EL ERROR: Cambiamos Spacer() por SizedBox
                const SizedBox(height: 30), // Espacio grande antes del footer

                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "Todos los derechos reservados ManadaCORP 2025",
                    style: TextStyle(color: Colors.white38, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          const BotonAtras(colorIcono: Colors.white),
        ],
      ),
    );
  }

  Widget tarjeta({
    required String nombre,
    required String rol,
    required String rutaImagen,
  }) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      color: Colors.white,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (rutaImagen.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  rutaImagen,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.grey,
                    );
                  },
                ),
              )
            else
              const Icon(Icons.person, size: 70, color: Colors.indigo),

            const SizedBox(height: 10),

            Text(
              nombre,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 5),

            Text(
              rol,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

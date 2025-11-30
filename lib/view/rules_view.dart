// Archivo: lib/pagina_reglas.dart
import 'package:flutter/material.dart';
import 'widgets/boton_atras.dart';

class PaginaReglas extends StatelessWidget {
  const PaginaReglas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. FONDO (Mismo violeta oscuro que Desarrolladores)
          Container(color: const Color(0xFF1A1025)),

          // 2. CONTENIDO CON SCROLL
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 80), // Espacio superior
                // Imagen
                Image.asset(
                  'assets/images/reglas.png',
                  width: 180,
                  height:
                      180, // Le di altura fija para controlar mejor el espacio
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    // Si no tienes la imagen aún, muestra este icono
                    return const Icon(
                      Icons.menu_book_rounded,
                      size: 100,
                      color: Colors.white24,
                    );
                  },
                ),

                const SizedBox(height: 20),

                // Título
                const Text(
                  "¿CÓMO JUGAR?",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "Domina la lógica de la torre",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),

                const SizedBox(height: 25),

                // --- CAJA DE REGLAS ---
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ), // Margen a los lados
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 600,
                  ), // Evita que se estire demasiado en tablets
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.black26, // Fondo semitransparente
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white10),
                  ),
                  child: Column(
                    children: [
                      _itemRegla(
                        Icons.emoji_objects,
                        "Objetivo",
                        "Tu mision es devolver la vida a la ciudad. Cada edificio superado ilumina y restaura una parte de Brain City.",
                      ),

                      _divider(),

                      _itemRegla(
                        Icons.pan_tool_alt,
                        "Explora",
                        "Desbloquea edificios emblematicos. Desde el museo hasta el laboratorio.",
                      ),

                      _divider(),

                      _itemRegla(
                        Icons.block,
                        "Restricción",
                        "No puedes recorrer edificios sin antes haber pasado los niveles anteriores.",
                      ),

                      _divider(),

                      _itemRegla(
                        Icons.timer,
                        "Puntuación",
                        "Tendras un tiempo limite para completar cada nivel. ¡Apresurate!",
                      ),

                      _divider(),

                      _itemRegla(
                        Icons.refresh,
                        "Reiniciar",
                        "Si te atascas, puedes reiniciar el nivel para mejorar tu estrategia.",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // Copyright
                const Text(
                  "Todos los derechos reservados ManadaCORP 2025",
                  style: TextStyle(color: Colors.white38, fontSize: 12),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30), // Espacio final
              ],
            ),
          ),

          // 3. BOTÓN ATRÁS (Siempre al final para estar arriba)
          const BotonAtras(colorIcono: Colors.white),
        ],
      ),
    );
  }

  // --- MÉTODOS AUXILIARES (Fuera del build) ---

  Widget _divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Divider(color: Colors.white12, height: 1),
    );
  }

  Widget _itemRegla(IconData icono, String titulo, String descripcion) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icono con fondo suave
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icono, color: Colors.amberAccent, size: 24),
        ),

        const SizedBox(width: 15),

        // Textos
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                descripcion,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13, // Letra un poco más pequeña para leer mejor
                  height: 1.4, // Interlineado cómodo
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

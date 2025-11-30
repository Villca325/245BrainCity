import 'package:flutter/material.dart';

class PaginaMenu extends StatelessWidget {
  const PaginaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1025),

      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                "BRAIN CITY",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFDE7),
                ),
              ),
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/MapaCiudad2.jpg',
                width: 400,
                height: 400,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFff6b9d),
                ),
                onPressed: () => Navigator.pushNamed(context, '/mapa'),
                child: const Text(
                  "Jugar",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(170, 60),
                      backgroundColor: const Color(0xFF7c3aed),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/desarrolladores'),
                    child: const Text(
                      "Desarrolladores",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),

                  const SizedBox(width: 10),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 60),
                      backgroundColor: const Color(0xFFfbbf24),
                      alignment: Alignment.center,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/reglas'),
                    icon: const Icon(
                      Icons.menu_book_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                    label: const Text(
                      "Reglas",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
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
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../data/quiz_data.dart'; // Tus datos
import '../models/building_model.dart'; // Tu modelo
import 'quiz_view.dart';

class ImagePainted extends StatefulWidget {
  const ImagePainted({super.key});

  @override
  State<ImagePainted> createState() => _ImagePaintedState();
}

class _ImagePaintedState extends State<ImagePainted> {
  var jsonData; //#JSON es clave
  Future<void> loadJsonAsset() async {
    final String jsonString = await rootBundle.loadString(
      'assets/json/coordenadas.json',
    );
    var data = jsonDecode(jsonString);
    setState(() {
      jsonData = data;
    });
  }

  final double anchoImagen = 832;
  final double altoImagen = 1248;
  Set<int> tappedAreas = {1, 2, 3, 4, 5};
  @override
  void initState() {
    super.initState();
    loadJsonAsset();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final anchoTotal = constraints.maxWidth;
        final altoTotal = constraints.maxHeight;

        final scalaX = anchoTotal / anchoImagen;
        final scalaY = altoTotal / altoImagen;

        List<Offset> area1 = [];
        llenarPuntos("1", area1, scalaX, scalaY);
        List<Offset> area2 = [];
        llenarPuntos("2", area2, scalaX, scalaY);
        List<Offset> area3 = [];
        llenarPuntos("3", area3, scalaX, scalaY);
        List<Offset> area4 = [];
        llenarPuntos("4", area4, scalaX, scalaY);
        List<Offset> area5 = [];
        llenarPuntos("5", area5, scalaX, scalaY);
        return GestureDetector(
          onTapDown: (details) {
            final pos = details.localPosition;

            // --- CAMBIA ESTO ---
            if (_insidePolygon(pos, area1)) {
              _navegar(context, 1, QuizData.banco); // Área 1 -> Banco
            } else if (_insidePolygon(pos, area2)) {
              _navegar(
                context,
                2,
                QuizData.laboratorio,
              ); // Área 2 -> Laboratorio
            } else if (_insidePolygon(pos, area3)) {
              _navegar(context, 3, QuizData.biblioteca); // Área 3 -> Biblioteca
            } else if (_insidePolygon(pos, area4)) {
              _navegar(context, 4, QuizData.museo); // Área 4 -> Museo
            } else if (_insidePolygon(pos, area5)) {
              _navegar(context, 5, QuizData.gimnasio); // Área 5 -> Gimnasio
            }
            // -------------------
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/images/brainCity.png",
                width: anchoTotal,
                height: altoTotal,
                fit: BoxFit.fill,
              ),

              CustomPaint(
                size: Size(anchoTotal, altoTotal),
                painter: PolygonPainter(
                  polygons: [area1, area2, area3, area4, area5],
                  filtro: tappedAreas,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void llenarPuntos(
    String numeroArea,
    List<Offset> area,
    double scalaX,
    double scalaY,
  ) {
    for (int i = 0; i + 1 < jsonData[numeroArea].length; i += 2) {
      area.add(
        Offset(
          jsonData[numeroArea][i] * scalaX,
          jsonData[numeroArea][i + 1] * scalaY,
        ),
      );
    }
  }

  void alternarEstado(Set<int> tappedAreas, int i) {
    if (tappedAreas.contains(i)) {
      tappedAreas.remove(i);
    } else {
      tappedAreas.add(i);
    }
  }

  bool _insidePolygon(Offset point, List<Offset> polygon) {
    final path = Path()..addPolygon(polygon, true);
    return path.contains(point);
  }

  //funcion para navegacion
  void _navegar(BuildContext context, int idArea, Building edificio) {
    setState(() {
      alternarEstado(tappedAreas, idArea);
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QuizView(building: edificio)),
    );
  }
}

class PolygonPainter extends CustomPainter {
  final List<List<Offset>> polygons;
  final Set<int> filtro;

  PolygonPainter({required this.polygons, required this.filtro});

  @override
  void paint(Canvas canvas, Size size) {
    Paint fillPaint = Paint()..style = PaintingStyle.fill;

    for (int i = 0; i < polygons.length; i++) {
      final path = Path()..addPolygon(polygons[i], true);

      if (filtro.contains(i + 1)) {
        fillPaint.color = Colors.grey.withAlpha(175);
        canvas.drawPath(path, fillPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

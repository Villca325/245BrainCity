import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';

import '../data/quiz_data.dart';
import '../models/building_model.dart';
import 'quiz_view.dart';
import '../controllers/city_controller.dart';

class ImagePainted extends StatefulWidget {
  const ImagePainted({super.key});

  @override
  State<ImagePainted> createState() => _ImagePaintedState();
}

class _ImagePaintedState extends State<ImagePainted> {
  var jsonData;
  final double anchoImagen = 832;
  final double altoImagen = 1248;

  final Map<int, List<Offset>> polygons = {};

  final Map<int, Building> areaBuilding = {
    1: QuizData.banco,
    2: QuizData.laboratorio,
    3: QuizData.biblioteca,
    4: QuizData.museo,
    5: QuizData.gimnasio,
  };

  Set<int> tappedAreas = {5};

  @override
  void initState() {
    super.initState();
    loadJsonAsset();
  }

  Future<void> loadJsonAsset() async {
    final String jsonString = await rootBundle.loadString(
      'assets/json/coordenadas.json',
    );
    var data = jsonDecode(jsonString);
    setState(() {
      jsonData = data;
      for (int i = 1; i <= 5; i++) {
        polygons[i] = [];
        llenarPuntos(i.toString(), polygons[i]!, 1, 1);
      }
    });
  }

  void _navegar(BuildContext context, int idArea, Building edificio) async {
    final cityController = Provider.of<CityController>(context, listen: false);

    if (!cityController.estaDesbloqueado(idArea)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Este edificio está bloqueado. ¡Debes desbloquearlo primero!"),
        ),
      );
      return;
    }

    final puntosEdificio = await Navigator.push<int>(
      context,
      MaterialPageRoute(builder: (_) => QuizView(building: edificio)),
    );

    if (puntosEdificio != null && puntosEdificio >= 1000) {
      cityController.desbloquearSiguiente(idArea);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cityController = Provider.of<CityController>(context); // <-- Escuchar cambios

    return LayoutBuilder(
      builder: (context, constraints) {
        final anchoTotal = constraints.maxWidth;
        final altoTotal = constraints.maxHeight;

        final scalaX = anchoTotal / anchoImagen;
        final scalaY = altoTotal / altoImagen;

        polygons.forEach((id, polygon) {
          polygon.clear();
          llenarPuntos(id.toString(), polygon, scalaX, scalaY);
        });

        return GestureDetector(
          onTapDown: (details) {
            final pos = details.localPosition;
            polygons.forEach((idArea, polygon) {
              if (_insidePolygon(pos, polygon)) {
                _navegar(context, idArea, areaBuilding[idArea]!);
              }
            });
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
                  polygons: polygons,
                  desbloqueados: cityController.estadoDesbloqueo,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void llenarPuntos(String numeroArea, List<Offset> area, double scalaX, double scalaY) {
    if (jsonData == null) return;
    for (int i = 0; i + 1 < jsonData[numeroArea].length; i += 2) {
      area.add(
        Offset(
          jsonData[numeroArea][i] * scalaX,
          jsonData[numeroArea][i + 1] * scalaY,
        ),
      );
    }
  }

  bool _insidePolygon(Offset point, List<Offset> polygon) {
    final path = Path()..addPolygon(polygon, true);
    return path.contains(point);
  }
}

class PolygonPainter extends CustomPainter {
  final Map<int, List<Offset>> polygons;
  final Map<int, bool> desbloqueados;

  PolygonPainter({required this.polygons, required this.desbloqueados});

  @override
  void paint(Canvas canvas, Size size) {
    Paint fillPaint = Paint()..style = PaintingStyle.fill;

    polygons.forEach((idArea, polygon) {
      final path = Path()..addPolygon(polygon, true);
      if (!desbloqueados[idArea]!) {
        fillPaint.color = Colors.grey.withAlpha(175);
        canvas.drawPath(path, fillPaint);
      }
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

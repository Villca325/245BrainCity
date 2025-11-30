import 'package:flutter/material.dart';

enum BuildingType { banco, laboratorio, museo, biblioteca, gimnasio }

class Pregunta {
  final String id;
  final String textoPregunta;
  final List<String> opciones;
  final int indiceRespuestaCorrecta;
  final String tipoEdificio;

  Pregunta({
    required this.id,
    required this.textoPregunta,
    required this.opciones,
    required this.indiceRespuestaCorrecta,
    required this.tipoEdificio,
  });
}

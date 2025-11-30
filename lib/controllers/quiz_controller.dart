import 'dart:math';

import 'package:flutter/material.dart';
import '../models/question_model.dart';
import '../models/building_model.dart';

class QuizController extends ChangeNotifier {
  final Building building;
  List<int> usados = [];
  int puntos = 0;
  Pregunta? preguntaActual;
  int? _respuestaSeleccionada;

  QuizController({required this.building}) {
    _cargarNuevaPregunta();
  }

  void setRespuestaSeleccionada(int indice) {
    _respuestaSeleccionada = indice;
  }

  void _cargarNuevaPregunta() {
    final preguntas = building.questions;

    if (usados.length == preguntas.length) {
      preguntaActual = null;
      notifyListeners();
      return;
    }

    final random = Random();
    int nuevoIndex;

    do {
      nuevoIndex = random.nextInt(preguntas.length);
    } while (usados.contains(nuevoIndex));

    usados.add(nuevoIndex);
    preguntaActual = preguntas[nuevoIndex];
    notifyListeners();
  }

  bool responder() {
    if (preguntaActual == null || _respuestaSeleccionada == null) return false;

    bool correcta = _respuestaSeleccionada == preguntaActual!.indiceRespuestaCorrecta;

    if (correcta) {
      puntos += 100;
    }

    _respuestaSeleccionada = null;
    return correcta;
  }

  void siguientePregunta() {
    _cargarNuevaPregunta();
  }

  bool get quizTerminado => preguntaActual == null;
}

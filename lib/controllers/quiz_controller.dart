import 'dart:math';

import 'package:flutter/material.dart';
import '../models/question_model.dart';
import '../models/building_model.dart';

class QuizController extends ChangeNotifier {
  final Building building;
  List<int> usados = [];
  int puntos = 0;
  Pregunta? preguntaActual;

  QuizController({required this.building}) {
    _cargarNuevaPregunta();
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

  bool responder(int indiceSeleccionado) {
    if (preguntaActual == null) return false;

    bool correcta = indiceSeleccionado == preguntaActual!.indiceRespuestaCorrecta;

    if (correcta) {
      puntos += 100;
    }

    return correcta;
  }

  void siguientePregunta() {
    _cargarNuevaPregunta();
  }

  bool get quizTerminado => preguntaActual == null;
}

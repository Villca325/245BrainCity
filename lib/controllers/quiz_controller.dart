import 'package:flutter/material.dart';
import '../models/building_model.dart';
import '../models/question_model.dart';

class QuizController extends ChangeNotifier {
  final Building building;
  late List<Pregunta> _preguntas;
  int _indicePreguntaActual = 0;
  int _puntos = 0;
  bool _yaGano = false;
  int? _respuestaSeleccionada;

  QuizController({required this.building}) {
    _preguntas = List.from(building.questions);
  }

  Pregunta? get preguntaActual {
    if (_indicePreguntaActual < _preguntas.length) {
      return _preguntas[_indicePreguntaActual];
    }
    return null;
  }

  int get puntos => _puntos;

  bool get quizTerminado => _indicePreguntaActual >= _preguntas.length;

  bool get yaGano => _yaGano;

  void marcarComoGanado() {
    _yaGano = true;
    notifyListeners();
  }

  void setRespuestaSeleccionada(int index) {
    _respuestaSeleccionada = index;
  }

  bool responder() {
    if (_preguntaCorrecta() && _respuestaSeleccionada != null) {
      _puntos += 100;
      notifyListeners();
      return true;
    }
    return false;
  }

  void siguientePregunta() {
    _indicePreguntaActual++;
    _respuestaSeleccionada = null;
    notifyListeners();
  }

  bool _preguntaCorrecta() {
    final pregunta = preguntaActual;
    if (pregunta == null || _respuestaSeleccionada == null) return false;
    return pregunta.indiceRespuestaCorrecta == _respuestaSeleccionada;
  }
}

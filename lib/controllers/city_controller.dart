import 'package:flutter/material.dart';

class CityController extends ChangeNotifier {
  int totalScore = 0;
  final Map<int, bool> edificiosDesbloqueados = {
    1: false, // Banco
    2: false, // Laboratorio
    3: false, // Biblioteca
    4: false, // Museo
    5: true, // Gimnasio (desbloqueado al inicio)
  };

  int get puntos => totalScore;

  Map<int, bool> get estadoDesbloqueo => edificiosDesbloqueados;

  void agregarPuntos(int cantidad) {
    totalScore += cantidad;
    notifyListeners();
  }

  void resetearPuntos() {
    totalScore = 0;
    notifyListeners();
  }

  void desbloquearSiguiente(int idActual) {
    int siguiente = idActual - 1; // Desbloqueo en orden 5->4->3->2->1
    if (siguiente >= 1 && edificiosDesbloqueados[siguiente] == false) {
      edificiosDesbloqueados[siguiente] = true;
      notifyListeners();
    }
  }

  bool estaDesbloqueado(int idArea) {
    return edificiosDesbloqueados[idArea] ?? false;
  }
}
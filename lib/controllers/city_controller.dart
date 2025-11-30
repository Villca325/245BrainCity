import 'package:flutter/material.dart';

class CityController extends ChangeNotifier {
  int totalScore = 0;

  CityController();

  int get puntos => totalScore;

  void agregarPuntos(int cantidad) {
    totalScore += cantidad;
    notifyListeners();
  }

  void resetearPuntos(){
    totalScore = 0;
    notifyListeners();
  }
}

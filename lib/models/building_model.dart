import 'package:flutter/material.dart';
import 'question_model.dart'; // Importamos el modelo de pregunta que ya tenías

class Building {
  final String id;
  final String name;
  final Color color;
  final IconData icon;
  final List<Pregunta> questions;

  const Building({
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
    required this.questions,
  });
}

import 'package:flutter/material.dart';
import '../models/building_model.dart';
import '../models/question_model.dart';

class QuizData {
  // 1. BANCO (Matemáticas)
  static final Building banco = Building(
    id: 'banco',
    name: 'BANCO',
    color: const Color(0xFFFF5252), // Rojo (como en tu imagen)
    icon: Icons.attach_money,
    questions: [
      Pregunta(
        id: 'b1',
        textoPregunta: "En Límites cuanto es el limite de 1/x cuando x -> 0",
        opciones: ["0", "Indeterminado", "Infinito", "1"],
        indiceRespuestaCorrecta: 2,
        tipoEdificio: 'banco',
      ),
    ],
  );

  // 2. LABORATORIO (Química)
  static final Building laboratorio = Building(
    id: 'lab',
    name: 'LABORATORIO',
    color: const Color(0xFF448AFF), // Azul
    icon: Icons.science,
    questions: [
      Pregunta(
        id: 'l1',
        textoPregunta: "¿Cuál es la fórmula del agua oxigenada?",
        opciones: ["H2O2", "H2O", "O2", "NaCl"],
        indiceRespuestaCorrecta: 0,
        tipoEdificio: 'laboratorio',
      ),
    ],
  );

  // 3. BIBLIOTECA (Cultura) - Asumiré que el área 3 es Biblioteca
  static final Building biblioteca = Building(
    id: 'biblio',
    name: 'BIBLIOTECA',
    color: const Color(0xFF5D4037), // Café
    icon: Icons.book,
    questions: [
      Pregunta(
        id: 'bi1',
        textoPregunta: "¿Autor de Don Quijote?",
        opciones: ["Cervantes", "Gabo", "Neruda", "Dante"],
        indiceRespuestaCorrecta: 0,
        tipoEdificio: 'biblioteca',
      ),
    ],
  );

  // 4. MUSEO (Historia)
  static final Building museo = Building(
    id: 'museo',
    name: 'MUSEO',
    color: const Color(0xFFFFCA28), // Amarillo mostaza
    icon: Icons.museum,
    questions: [
      Pregunta(
        id: 'm1',
        textoPregunta: "¿En qué año comenzó la segunda guerra mundial?",
        opciones: ["1940", "1932", "1918", "1939"],
        indiceRespuestaCorrecta: 3,
        tipoEdificio: 'museo',
      ),
    ],
  );

  // 5. GIMNASIO (Lógica)
  static final Building gimnasio = Building(
    id: 'gym',
    name: 'GIMNASIO',
    color: Colors.grey,
    icon: Icons.fitness_center,
    questions: [
      Pregunta(
        id: 'g1',
        textoPregunta: "Tres cofres están frente a ti...",
        opciones: ["Cofre A", "Cofre B", "Cofre C", "Ninguno"],
        indiceRespuestaCorrecta: 1,
        tipoEdificio: 'gimnasio',
      ),
    ],
  );
}

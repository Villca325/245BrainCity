import 'package:flutter/material.dart';
import '../models/building_model.dart';
import '../models/question_model.dart'; // Asegúrate que este archivo tiene la clase Pregunta

class QuizView extends StatefulWidget {
  final Building building;

  const QuizView({super.key, required this.building});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Pregunta pregunta = widget.building.questions[currentQuestionIndex];

    return Scaffold(
      backgroundColor: widget.building.color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.building.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                "Puntos: 0",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // PREGUNTA
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Text(
                pregunta.textoPregunta,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: pregunta.opciones.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        print("Seleccionado: ${pregunta.opciones[index]}");

                        print("Correcto: ${pregunta.indiceRespuestaCorrecta}");
                      },
                      child: Text(pregunta.opciones[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

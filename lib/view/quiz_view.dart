import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/building_model.dart';
import '../controllers/quiz_controller.dart';
import '../controllers/city_controller.dart';

class QuizView extends StatefulWidget {
  final Building building;

  const QuizView({super.key, required this.building});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  late QuizController quizController;

  @override
  void initState() {
    super.initState();
    quizController = QuizController(building: widget.building);
  }

  void _responder(BuildContext context, CityController cityController) {
    final correcta = quizController.responder();

    if (correcta) {
      cityController.agregarPuntos(100);
    }

    // Mostrar diálogo de respuesta
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(correcta ? "¡Correcto!" : "Incorrecto"),
        content: Text(correcta ? "¡Ganaste 100 puntos!" : "Sigue intentando."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              quizController.siguientePregunta();

              // Verificación de victoria
              if (quizController.puntos >= 1000 && !quizController.yaGano) {
                quizController.marcarComoGanado();
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _mostrarFinQuiz(context, cityController);
                });
              }

              setState(() {});
            },
            child: const Text("Continuar"),
          ),
        ],
      ),
    );
  }

  void _mostrarFinQuiz(BuildContext context, CityController cityController) {
    bool gano = quizController.puntos >= 1000;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: Text(gano ? "¡Felicidades, Ganaste!" : "Fin del Quiz"),
        content: Text(
            "Tu puntuación en este edificio: ${quizController.puntos}\n"
                "Puntuación global: ${cityController.totalScore}"
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, quizController.puntos);
              Navigator.pop(context, quizController.puntos);
            },
            child: const Text("Volver"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cityController = Provider.of<CityController>(context, listen: false);
    final pregunta = quizController.preguntaActual;

    if (pregunta == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

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
            Center(
              child: Text(
                "Puntos: ${quizController.puntos}",
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

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
                        quizController.setRespuestaSeleccionada(index);
                        _responder(context, cityController);
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

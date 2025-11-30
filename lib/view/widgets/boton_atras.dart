import 'package:flutter/material.dart';

class BotonAtras extends StatelessWidget {
  final Color colorIcono;

  const BotonAtras({
    super.key,
    this.colorIcono = const Color.fromARGB(221, 255, 255, 255),
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_rounded, size: 28, color: colorIcono),

            splashRadius: 24,
            tooltip: 'Regresar',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}

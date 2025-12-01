import 'package:flutter/material.dart';
import '../models/building_model.dart';
import '../models/question_model.dart';

class QuizData {
  // =======================================================
  // 1. BANCO (Matemáticas, Cálculo e Informática)
  // =======================================================
  static final Building banco = Building(
    id: 'banco',
    name: 'BANCO',
    color: const Color(0xFFFF5252), // Rojo
    icon: Icons.attach_money,
    questions: [
      // --- Lote 1 ---
      Pregunta(
          id: 'b1',
          textoPregunta: "En Límites: ¿Lim 1/x cuando x -> ∞?",
          opciones: ["0", "Indeterminado", "Infinito", "1"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b2',
          textoPregunta: "¿Derivada de 3x²?",
          opciones: ["3x", "6x", "x³", "6"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b3',
          textoPregunta: "5 en Binario:",
          opciones: ["100", "101", "110", "111"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b4',
          textoPregunta: "2⁸ (Un Byte) es:",
          opciones: ["128", "256", "512", "1024"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b5',
          textoPregunta: "Si f(x)=2x+5, f(3) es:",
          opciones: ["8", "10", "11", "12"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b6',
          textoPregunta: "Raíz cuadrada de 144:",
          opciones: ["10", "11", "12", "14"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b7',
          textoPregunta: "Valor aprox. de PI:",
          opciones: ["3.1416", "2.7182", "1.6180", "3.1519"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b8',
          textoPregunta: "Factorial de 5 (5!):",
          opciones: ["20", "60", "100", "120"],
          indiceRespuestaCorrecta: 3,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b9',
          textoPregunta: "Polígono de 5 lados:",
          opciones: ["Hexágono", "Pentágono", "Heptágono", "Cuadrado"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b10',
          textoPregunta: "1 AND 0 es:",
          opciones: ["1", "0", "Null", "True"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),

      // --- Lote 2 ---
      Pregunta(
          id: 'b11',
          textoPregunta: "¿Cuántos bits tiene un IPv4?",
          opciones: ["32", "64", "128", "16"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b12',
          textoPregunta: "Hexadecimal de 15:",
          opciones: ["A", "D", "E", "F"],
          indiceRespuestaCorrecta: 3,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b13',
          textoPregunta: "¿Ángulos internos de un triángulo?",
          opciones: ["90°", "180°", "360°", "270°"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b14',
          textoPregunta: "Derivada de una constante (ej: 5):",
          opciones: ["5", "1", "0", "x"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b15',
          textoPregunta: "1024 Bytes son:",
          opciones: ["1 KB", "1 MB", "1 GB", "1 Bit"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b16',
          textoPregunta: "Integral de x dx:",
          opciones: ["1", "x²", "x²/2", "2x"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b17',
          textoPregunta: "Siguiente primo tras el 7:",
          opciones: ["9", "10", "11", "13"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b18',
          textoPregunta: "Resultado de 7 x 8:",
          opciones: ["54", "56", "48", "64"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b19',
          textoPregunta: "Compuerta lógica que invierte (NOT 1):",
          opciones: ["1", "0", "OR", "AND"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
      Pregunta(
          id: 'b20',
          textoPregunta: "¿Qué significa CPU?",
          opciones: [
            "Central Power Unit",
            "Central Processing Unit",
            "Computer Personal Unit",
            "Control Panel Unit"
          ],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'banco'),
    ],
  );

  // =======================================================
  // 2. LABORATORIO (Ciencia, Física, Química)
  // =======================================================
  static final Building laboratorio = Building(
    id: 'lab',
    name: 'LABORATORIO',
    color: const Color(0xFF448AFF), // Azul
    icon: Icons.science,
    questions: [
      // --- Lote 1 ---
      Pregunta(
          id: 'l1',
          textoPregunta: "Fórmula del agua oxigenada:",
          opciones: ["H2O2", "H2O", "O2", "CO2"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l2',
          textoPregunta: "Símbolo del Oro:",
          opciones: ["Ag", "Fe", "Au", "Cu"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l3',
          textoPregunta: "Fuerza = masa x aceleración es:",
          opciones: [
            "1ra Ley Newton",
            "2da Ley Newton",
            "3ra Ley Newton",
            "Ley Ohm"
          ],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l4',
          textoPregunta: "Ebullición agua nivel mar:",
          opciones: ["90°C", "100°C", "120°C", "0°C"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l5',
          textoPregunta: "Planeta Rojo:",
          opciones: ["Júpiter", "Venus", "Marte", "Saturno"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l6',
          textoPregunta: "Velocidad de la luz:",
          opciones: ["300.000 km/s", "100.000 km/s", "1.000 km/h", "300 m/s"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l7',
          textoPregunta: "Gas vital para respirar:",
          opciones: ["Nitrógeno", "Oxígeno", "Helio", "Carbono"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l8',
          textoPregunta: "Carga negativa del átomo:",
          opciones: ["Protón", "Neutrón", "Electrón", "Quark"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l9',
          textoPregunta: "Metal líquido:",
          opciones: ["Hierro", "Mercurio", "Plomo", "Aluminio"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l10',
          textoPregunta: "Gravedad en la Tierra:",
          opciones: ["5.5 m/s²", "12 m/s²", "9.8 m/s²", "8.9 m/s²"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),

      // --- Lote 2 ---
      Pregunta(
          id: 'l11',
          textoPregunta: "Símbolo del Hierro:",
          opciones: ["Hi", "Fe", "Ir", "He"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l12',
          textoPregunta: "Hueso más largo del cuerpo:",
          opciones: ["Tibia", "Peroné", "Fémur", "Húmero"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l13',
          textoPregunta: "¿Cuántos planetas hay (Sistema Solar)?",
          opciones: ["7", "8", "9", "10"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l14',
          textoPregunta: "PH neutro es:",
          opciones: ["0", "14", "7", "5"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l15',
          textoPregunta: "Animal más rápido (tierra):",
          opciones: ["León", "Guepardo", "Caballo", "Antílope"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l16',
          textoPregunta: "Estudia los fósiles:",
          opciones: ["Biología", "Paleontología", "Geología", "Botánica"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l17',
          textoPregunta: "Satélite natural de la Tierra:",
          opciones: ["Sol", "Luna", "Marte", "Titán"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l18',
          textoPregunta: "Mineral más duro:",
          opciones: ["Oro", "Hierro", "Diamante", "Cuarzo"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l19',
          textoPregunta: "Órgano que bombea sangre:",
          opciones: ["Hígado", "Pulmón", "Corazón", "Cerebro"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
      Pregunta(
          id: 'l20',
          textoPregunta: "Estado del agua en hielo:",
          opciones: ["Líquido", "Gaseoso", "Sólido", "Plasma"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'laboratorio'),
    ],
  );

  // =======================================================
  // 3. BIBLIOTECA (Cultura, Arte, Literatura)
  // =======================================================
  static final Building biblioteca = Building(
    id: 'biblio',
    name: 'BIBLIOTECA',
    color: const Color(0xFF5D4037), // Café
    icon: Icons.book,
    questions: [
      // --- Lote 1 ---
      Pregunta(
          id: 'bi1',
          textoPregunta: "Autor 'Don Quijote':",
          opciones: ["Cervantes", "Gabo", "Neruda", "Dante"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi2',
          textoPregunta: "Pintó la Mona Lisa:",
          opciones: ["Van Gogh", "Picasso", "Da Vinci", "Miguel Ángel"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi3',
          textoPregunta: "País más grande:",
          opciones: ["China", "EEUU", "Rusia", "Brasil"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi4',
          textoPregunta: "Capital de Bolivia:",
          opciones: ["La Paz", "Sucre", "Cochabamba", "Santa Cruz"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi5',
          textoPregunta: "Autor 'Harry Potter':",
          opciones: ["Tolkien", "JK Rowling", "King", "Martin"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi6',
          textoPregunta: "¿Dónde está la Torre Eiffel?",
          opciones: ["Italia", "España", "Francia", "Alemania"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi7',
          textoPregunta: "Moneda de Japón:",
          opciones: ["Dólar", "Euro", "Yen", "Won"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi8',
          textoPregunta: "Pintó 'Noche Estrellada':",
          opciones: ["Monet", "Van Gogh", "Dalí", "Rembrandt"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi9',
          textoPregunta: "Río más largo:",
          opciones: ["Nilo", "Amazonas", "Misisipi", "Yangtsé"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi10',
          textoPregunta: "Himno de Francia:",
          opciones: ["Marsellesa", "God Save Queen", "Oda Alegría", "Danubio"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'biblioteca'),

      // --- Lote 2 ---
      Pregunta(
          id: 'bi11',
          textoPregunta: "Autor 'Cien Años de Soledad':",
          opciones: ["Vargas Llosa", "García Márquez", "Cortázar", "Borges"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi12',
          textoPregunta: "Capital de EEUU:",
          opciones: ["NY", "Los Angeles", "Washington DC", "Miami"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi13',
          textoPregunta: "¿Cuántas maravillas modernas hay?",
          opciones: ["5", "6", "7", "8"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi14',
          textoPregunta: "Idioma más hablado:",
          opciones: ["Español", "Inglés", "Chino Mandarín", "Hindi"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'), // Inglés (total speakers)
      Pregunta(
          id: 'bi15',
          textoPregunta: "Diosa griega sabiduría:",
          opciones: ["Venus", "Atenea", "Hera", "Afrodita"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi16',
          textoPregunta: "Pintó 'El Guernica':",
          opciones: ["Dalí", "Picasso", "Miró", "Goya"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi17',
          textoPregunta: "Continente de Egipto:",
          opciones: ["Asia", "Europa", "África", "Oceanía"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi18',
          textoPregunta: "Autor 'La Divina Comedia':",
          opciones: ["Homero", "Dante Alighieri", "Virgilio", "Sófocles"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi19',
          textoPregunta: "Capital de Argentina:",
          opciones: ["Córdoba", "Rosario", "Buenos Aires", "Mendoza"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
      Pregunta(
          id: 'bi20',
          textoPregunta: "Séptimo arte:",
          opciones: ["Música", "Pintura", "Cine", "Danza"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'biblioteca'),
    ],
  );

  // =======================================================
  // 4. MUSEO (Historia Universal y de Bolivia)
  // =======================================================
  static final Building museo = Building(
    id: 'museo',
    name: 'MUSEO',
    color: const Color(0xFFFFCA28), // Amarillo
    icon: Icons.museum,
    questions: [
      // --- Lote 1 ---
      Pregunta(
          id: 'm1',
          textoPregunta: "Inicio 2da Guerra Mundial:",
          opciones: ["1914", "1939", "1945", "1929"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm2',
          textoPregunta: "Descubrió América (1492):",
          opciones: ["Colón", "Magallanes", "Vespucio", "Cortés"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm3',
          textoPregunta: "Independencia de Bolivia:",
          opciones: [
            "16 Julio 1809",
            "25 Mayo 1809",
            "6 Agosto 1825",
            "23 Marzo 1879"
          ],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm4',
          textoPregunta: "Construyó Machu Picchu:",
          opciones: ["Aztecas", "Mayas", "Incas", "Tiwanacotas"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm5',
          textoPregunta: "Hombre en la Luna:",
          opciones: ["1950", "1969", "1975", "1980"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm6',
          textoPregunta: "Revolución de 1789:",
          opciones: ["Rusa", "Industrial", "Francesa", "Mexicana"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm7',
          textoPregunta: "1er Presidente de Bolivia:",
          opciones: ["Sucre", "Bolívar", "Santa Cruz", "Ballivián"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm8',
          textoPregunta: "Caída Muro Berlín:",
          opciones: ["1980", "1989", "1991", "1975"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm9',
          textoPregunta: "Construyó Coliseo Romano:",
          opciones: ["Griegos", "Egipcios", "Romanos", "Otomanos"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm10',
          textoPregunta: "Inicio 1ra Guerra Mundial:",
          opciones: ["1914", "1918", "1939", "1900"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'museo'),

      // --- Lote 2 ---
      Pregunta(
          id: 'm11',
          textoPregunta: "Guerra del Pacífico (año):",
          opciones: ["1825", "1879", "1932", "1900"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm12',
          textoPregunta: "Libertador de 5 naciones:",
          opciones: ["San Martín", "Bolívar", "Murillo", "O'Higgins"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm13',
          textoPregunta: "Guerra del Chaco fue contra:",
          opciones: ["Chile", "Brasil", "Paraguay", "Perú"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm14',
          textoPregunta: "Civilización de pirámides:",
          opciones: ["Incas", "Egipcios", "Romanos", "Vikingos"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm15',
          textoPregunta: "Héroe del Topáter:",
          opciones: ["Bolívar", "Abaroa", "Sucre", "Busch"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm16',
          textoPregunta: "Revolución Nacional Bolivia:",
          opciones: ["1952", "1825", "2003", "1982"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm17',
          textoPregunta: "Imperio conquistado por Pizarro:",
          opciones: ["Azteca", "Maya", "Inca", "Mapuche"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm18',
          textoPregunta: "Líder contra Apartheid:",
          opciones: ["Luther King", "Mandela", "Gandhi", "Obama"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm19',
          textoPregunta: "Reina de Egipto famosa:",
          opciones: ["Nefertiti", "Cleopatra", "Isis", "Hatshepsut"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
      Pregunta(
          id: 'm20',
          textoPregunta: "Año retorno democracia Bolivia:",
          opciones: ["1952", "1982", "2000", "1990"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'museo'),
    ],
  );

  // =======================================================
  // 5. GIMNASIO (Lógica, Acertijos, Series)
  // =======================================================
  static final Building gimnasio = Building(
    id: 'gym',
    name: 'GIMNASIO',
    color: Colors.grey,
    icon: Icons.fitness_center,
    questions: [
      // --- Lote 1 ---
      Pregunta(
          id: 'g1',
          textoPregunta:
          "Padre de Ana tiene 5 hijas: Lala, Lele, Lili, Lolo y...",
          opciones: ["Lulu", "Ana", "Susana", "Laura"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g2',
          textoPregunta: "Serie: 2, 4, 8, 16...",
          opciones: ["20", "24", "30", "32"],
          indiceRespuestaCorrecta: 3,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g3',
          textoPregunta: "¿Qué pesa más? Kg hierro vs Kg plumas:",
          opciones: ["Hierro", "Plumas", "Iguales", "Depende"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g4',
          textoPregunta: "Adelantas al segundo, quedas:",
          opciones: ["Primero", "Segundo", "Tercero", "Último"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g5',
          textoPregunta: "Meses con 28 días:",
          opciones: ["Uno", "Ninguno", "Todos", "Seis"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g6',
          textoPregunta: "Ciudades sin casas, ríos sin agua:",
          opciones: ["Sueño", "Mapa", "Dibujo", "Cine"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g7',
          textoPregunta: "3 gatos, 3 ratones, 3 min. ¿100 gatos, 100 ratones?:",
          opciones: ["100 min", "1 min", "3 min", "30 min"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g8',
          textoPregunta: "Es tuyo, pero otros lo usan más:",
          opciones: ["Dinero", "Nombre", "Auto", "Paciencia"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g9',
          textoPregunta: "Serie Binaria: 0, 1, 10, 11...",
          opciones: ["12", "100", "101", "20"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g10',
          textoPregunta: "4 patas mañana, 2 tarde, 3 noche:",
          opciones: ["Perro", "Hombre", "Gato", "Tiempo"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),

      // --- Lote 2 ---
      Pregunta(
          id: 'g11',
          textoPregunta: "Si dices mi nombre, me rompo:",
          opciones: ["Vaso", "Silencio", "Promesa", "Hielo"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g12',
          textoPregunta: "Serie: 1, 1, 2, 3, 5, 8...",
          opciones: ["10", "11", "13", "15"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g13',
          textoPregunta:
          "Entras a una habitación oscura con un fósforo. Hay vela y leña. ¿Qué enciendes primero?",
          opciones: ["Vela", "Leña", "Fósforo", "Nada"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g14',
          textoPregunta: "¿Cuánta tierra hay en un hoyo de 1x1 metros?",
          opciones: ["1m³", "0.5m³", "Ninguna", "10kg"],
          indiceRespuestaCorrecta: 2,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g15',
          textoPregunta: "Hermano de mi tío, no es mi tío:",
          opciones: ["Mi abuelo", "Mi padre", "Mi primo", "Mi hermano"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g16',
          textoPregunta: "Solo sube y nunca baja:",
          opciones: ["Lluvia", "Edad", "Precio", "Globo"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g17',
          textoPregunta: "Lleno de agujeros y retiene agua:",
          opciones: ["Red", "Esponja", "Tela", "Colador"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g18',
          textoPregunta: "Serie: L, M, M, J, V...",
          opciones: ["S", "D", "L", "M"],
          indiceRespuestaCorrecta: 0,
          tipoEdificio: 'gimnasio'), // Días semana
      Pregunta(
          id: 'g19',
          textoPregunta: "Va delante de ti pero no lo ves:",
          opciones: ["Nariz", "Futuro", "Espalda", "Aire"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'),
      Pregunta(
          id: 'g20',
          textoPregunta: "París empieza con P y termina con...",
          opciones: ["S", "T", "P", "E"],
          indiceRespuestaCorrecta: 1,
          tipoEdificio: 'gimnasio'), // Termina con T
    ],
  );
}
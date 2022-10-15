import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_moviles/bloc/tutoapp_bloc.dart';
import 'package:proyecto_moviles/pages/agenda.dart';
import 'package:proyecto_moviles/pages/agendar_tutoria.dart';
import 'package:proyecto_moviles/pages/homepage.dart';
import 'package:proyecto_moviles/pages/tutorias_disponibles.dart';

void main() =>
    runApp(BlocProvider(create: (context) => TutoappBloc(), child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tutoapp',
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.green)),
        home: TutoriasDisponibles());
  }
}

import 'package:entradas_iteso/homepage/bloc/entradas_bloc.dart';
import 'package:entradas_iteso/homepage/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: BlocProvider<EntradasBloc>(
          create: (context) => EntradasBloc(),
          child: HomePage(),
        ));
  }
}

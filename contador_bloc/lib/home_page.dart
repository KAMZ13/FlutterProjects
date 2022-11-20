// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:contador_bloc/bloc/contador_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  int? counter;
  Color? colorParaMostrar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          BlocBuilder<ContadorBloc, ContadorState>(
            builder: (context, state) {
              if (state is ContadorCambiarColorState) {
                colorParaMostrar = state.nuevoColor;
              } else if (state is ActualizarContadorState) {
                counter = state.nuevoValor;
              }
              return Container(
                height: MediaQuery.of(context).size.height * 0.70,
                margin: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: colorParaMostrar ?? Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "${counter ?? "0"}",
                    style: TextStyle(fontSize: 72),
                  ),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {
                  BlocProvider.of<ContadorBloc>(context)
                      .add(CambiarColorEvent(colorSeleccionado: 0));
                },
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {
                  BlocProvider.of<ContadorBloc>(context)
                      .add(CambiarColorEvent(colorSeleccionado: 1));
                },
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {
                  BlocProvider.of<ContadorBloc>(context)
                      .add(CambiarColorEvent(colorSeleccionado: 2));
                },
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {
                  BlocProvider.of<ContadorBloc>(context)
                      .add(CambiarColorEvent(colorSeleccionado: 3));
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: () {
                    BlocProvider.of<ContadorBloc>(context)
                        .add(aumentaContadorEvent());
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {
                    BlocProvider.of<ContadorBloc>(context)
                        .add(decrementaContadorEvent());
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {
                    BlocProvider.of<ContadorBloc>(context)
                        .add(resetearContador());
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

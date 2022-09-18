import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  int counter = 0;
  String correo = "has mandado un correo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.network(
              "https://i0.wp.com/cimtrajalisco.org/wp-content/uploads/2019/02/Logo_Horizontal-1024x472.jpg?fit=1024%2C472"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //wrap
            children: [
              Column(
                children: const [
                  Text("Iteso:Universidad jesuita de Guadalajara"),
                  Text("San Pedro Tlaquepaque, Jalisco"),
                ],
              ),
              IconButton(
                onPressed: () {
                  {
                    counter++;
                  }
                },
                icon: const Icon(
                  Icons.thumb_up,
                ),
                color: Colors.blue,
              ),
              Text("${counter}")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.email,
                color: Colors.blueGrey,
                size: 50,
              ),
              Icon(
                Icons.call,
                size: 50,
                color: Colors.blueGrey,
              ),
              Icon(
                Icons.directions,
                size: 50,
                color: Colors.blueGrey,
              )
            ],
          ),
          Text(
            "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957 La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Implements the basic Material Design visual layout structure.
      appBar: AppBar(
        title: const Text('Mi primer App'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        margin: const EdgeInsets.all(
            8), //INSETS: EdgeInsets helps create the outer padding or the inner padding for a Widget based on the visual parameters, left, top, right, and bottom. It does not depend on the text direction.
        padding: const EdgeInsets.all(8),
        color: const Color(0xffeea433),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Guadalajara",
              style: TextStyle(
                fontSize: 32,
                color: Colors.grey[100],
              ),
            ),
            Text(
              "Nublado",
              style: TextStyle(
                color: Colors.grey[100],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.wb_cloudy,
                  color: const Color.fromARGB(249, 7, 114, 110),
                  size: 64,
                ),
                Text(
                  "19 °C",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            Align(
              // Creates an alignment widget. defaults to center
              alignment: Alignment.center,
              child: MaterialButton(
                color: Colors.yellow,
                child: Text("Actualizar Datos"),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                    //This class provides APIs for showing snack bars and material banners at the bottom and top of the screen, respectively.
                    //To display one of these notifications, obtain the ScaffoldMessengerState for the current BuildContext via
                    //ScaffoldMessenger.of and use the ScaffoldMessengerState.showSnackBar or the
                    //ScaffoldMessengerState.showMaterialBanner functions.
                    ..hideCurrentSnackBar()
                    // ignore: prefer_const_constructors
                    ..showSnackBar(SnackBar(
                        content:
                            const Text("Actualizando datos del clima...")));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

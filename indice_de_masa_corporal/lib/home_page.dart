import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _genero;
  var _txtAltura = TextEditingController();
  var _txtPeso = TextEditingController();
  final String _mj = '''
    Tabla del IMC para mujeres
    Edad	  IMC ideal	
    16-17	  19-24	
    18-18	    19-24	
    19-24	  19-24	
    25-34	  20-25	
    35-44	  21-26	
    45-54	  22-27	
    55-64	  23-28	
    65-90	  25-30
      ''';

  final String _hb = ''' 
    Tabla del IMC para hombres
    Edad	  IMC ideal	
    16-16	    19-24	
    17-17	    20-25	
    18-18	    20-25	
    19-24	  21-26	
    25-34	  22-27	
    35-54	  23-38	
    55-64	  24-29	
    65-90	  25-30
  ''';
  void _resetAll() {
    _genero = null;
    _txtAltura.clear();
    _txtPeso.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
        actions: [
          IconButton(
            onPressed: _resetAll,
            icon: const Icon(Icons.delete_forever),
            tooltip: "Reiniciar Calculadora",
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Ingrese sus datos para calcular el IMC"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.female,
                    color: _genero == false ? Colors.indigo : Colors.grey,
                  ),
                  onPressed: () {
                    _genero = false;
                    setState(() {});
                  },
                ),
                VerticalDivider(),
                IconButton(
                  icon: Icon(
                    Icons.male,
                    color: _genero == true ? Colors.blue[100] : Colors.grey,
                  ),
                  onPressed: () {
                    _genero = true;
                    setState(() {});
                  },
                ),
              ],
            ),
            TextField(
              controller: _txtAltura,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(Icons.square_foot),
                labelText: "Ingresar altura en metros",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _txtPeso,
              keyboardType: TextInputType.number,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                icon: const Icon(Icons.monitor_weight),
                labelText: "Ingresar Peso en Kilogramos",
                border: const OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 12.0, textStyle: TextStyle(color: Colors.red)),
              onPressed: _showResults,
              child: const Text("Calcular"),
            )
          ],
        ),
      ),
    );
  }

  void _showResults() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Tu IMC: ${_imc().toStringAsFixed(2)}"),
            content: Text("${_genero! ? _hb : _mj}"),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 12.0, textStyle: TextStyle(color: Colors.green)),
                child: Text("Aceptar"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  double _imc() {
    double p = double.parse(_txtPeso.text);
    double a = double.parse(_txtAltura.text);
    return (p / (a * a));
  }
}

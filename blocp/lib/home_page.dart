import 'package:blocp/bloc/colors_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  Widget contenido(Color colorcito, Widget boton) {
    return Container(
      color: colorcito,
      child: Center(
        child: boton,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: BlocConsumer<ColorsBloc, ColorsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ChangeColorBlueState)
            return contenido(
              Colors.cyan[600]!,
              ElevatedButton(
                child: Text(
                  "I hate this shit",
                ),
                onPressed: () {
                  BlocProvider.of<ColorsBloc>(context)
                      .add(ChangeColorEvent(i: 0));
                },
              ),
            );
          else if (state is ChangeColorRedState)
            return contenido(
              Colors.red[600]!,
              ElevatedButton(
                child: Text(
                  "I hate this shit",
                ),
                onPressed: () {
                  BlocProvider.of<ColorsBloc>(context)
                      .add(ChangeColorEvent(i: 1));
                },
              ),
            );
          else if (state is ChangeColorGreenState)
            return contenido(
              Colors.green[600]!,
              ElevatedButton(
                child: Text(
                  "I hate this shit",
                ),
                onPressed: () {
                  BlocProvider.of<ColorsBloc>(context)
                      .add(ChangeColorEvent(i: 2));
                },
              ),
            );
          else
            return contenido(
              Colors.amber[600]!,
              ElevatedButton(
                child: Text(
                  "I hate this shit",
                ),
                onPressed: () {
                  BlocProvider.of<ColorsBloc>(context)
                      .add(ChangeColorEvent(i: 0));
                },
              ),
            );
        },
      ),
    );
  }
}

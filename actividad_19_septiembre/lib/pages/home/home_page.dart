import 'dart:js_util';

import 'package:actividad_19_septiembre/main.dart';
import 'package:actividad_19_septiembre/pages/home/balanced_section.dart';
import 'package:actividad_19_septiembre/pages/home/tokens_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material App Bar"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green[900],
          ),
          Column(
            children: [
              balanced_section(),
              Divider(),
              Expanded(child: TokensSection()),
            ],
          ),
        ],
      ),
    );
  }
}

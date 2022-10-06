import 'package:flutter/material.dart';
import 'package:movies_list/item_movie.dart';
import 'package:movies_list/item_product.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Map<String, String>> _listElements = [
    {
      "title": "Star wars",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
    },
    {
      "title": "Black widow",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/0NTTbFn.jpg",
    },
    {
      "title": "Frozen 2",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
    {
      "title": "Joker",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/trdzMAl.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seleccione su pelicula favorita"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 45, 67, 153)),
        child: Column(
          children: [_moviesArea(context), ItemProduct(), _moviesList()],
        ),
      ),
    );
  }

  @override
  Widget _moviesArea(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      height: MediaQuery.of(context).size.height / 4,
      child: _moviesList(),
    );
  }

  @override
  Widget _moviesList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _listElements.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {},
          child: ItemMovie(content: _listElements[index]),
        );
      },
    );
  }
}

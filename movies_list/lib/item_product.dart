import 'package:flutter/material.dart';

class ItemProduct extends StatefulWidget {
  ItemProduct({Key? key}) : super(key: key);

  @override
  State<ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  final _pictureUrl =
      "https://freepngimg.com/thumb/popcorn/23411-8-popcorn-clipart.png";
  int palomitas = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            _pictureUrl,
            fit: BoxFit.contain,
            height: 120,
          ),
          Column(
            //se puede extraer metodos para evitar anidacion
            children: [
              Text("Palomitas Medianas"),
              Text("${palomitas}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        palomitas++;
                        setState(() {});
                      },
                      icon: Icon(Icons.arrow_upward)),
                  IconButton(
                      onPressed: () {
                        palomitas--;
                        setState(() {});
                      },
                      icon: Icon(Icons.arrow_downward)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

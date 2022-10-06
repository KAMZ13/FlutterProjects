import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Libreria Free to Play"),
      ),
      body: Container(
        child: Row(
          children: [
            IconButton(
                icon: FaIcon(FontAwesomeIcons.searchengin),
                onPressed: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                }),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchBooks = ["Book 1", "Book 2", "Book 3"];
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: FaIcon(FontAwesomeIcons.deleteLeft),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.arrowLeft),
        onPressed: () {
          close(context, null);
        });
  }

  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchBooks) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: ((context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchBooks) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: ((context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }),
    );
  }
}

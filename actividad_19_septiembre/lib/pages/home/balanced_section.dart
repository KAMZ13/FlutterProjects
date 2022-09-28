import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class balanced_section extends StatelessWidget {
  const balanced_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Total Balance:"),
        ListTile(
          title: Text("\$4,567.89"),
          trailing: FloatingActionButton.extended(
              icon: FaIcon(FontAwesomeIcons.sackDollar),
              label: Text("add token"),
              onPressed: () {}),
        ),
      ],
    );
  }
}

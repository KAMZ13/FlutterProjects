import 'package:actividad_19_septiembre/pages/home/item_token.dart';
import 'package:actividad_19_septiembre/providers/tokens_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TokensSection extends StatelessWidget {
  const TokensSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Your Tokens"),
            Text("Make Changes"),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: context.watch<TokensProvider>().getTokenList.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemToken(
                tokenObj: context.read<TokensProvider>().getTokenList[index],
              );
            },
          ),
        )
      ],
    );
  }
}

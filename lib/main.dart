import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  final List<Quote> quotes = <Quote>[
    Quote(
        author: 'Houphouet-Boigny',
        text: "La paix n'est pas un vain mot mais un comportement"),
    Quote(author: "L'Ecclesiaste", text: "L'humilité précède la gloire"),
    Quote(
        author: 'Lao Tseu',
        text: "Un voyage de mille lieues commence toujours par un premier pas"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Citations inspirantes'),
        backgroundColor: Color.fromARGB(255, 63, 54, 244),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

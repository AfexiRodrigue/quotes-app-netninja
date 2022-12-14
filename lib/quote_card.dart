import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote? quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote!.text,
                style: TextStyle(fontSize: 20.0, color: Colors.grey[600]),
              ),
              SizedBox(height: 10),
              Text(
                quote!.author,
                style: TextStyle(fontSize: 15.0, color: Colors.grey[800]),
              )
            ],
          ),
        ));
  }
}

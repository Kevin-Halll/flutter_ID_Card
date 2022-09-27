import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<String> quotes = [
    '1st string text for awesome quotes',
    '2nd string text for awesome quotes',
    '3rd string text for awesome quotes',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: quotes.map((quote) => Text(quote, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)).toList(),
          ),
        ),
      ),
    );
  }
}

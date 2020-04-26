import 'package:flutter/material.dart';
import 'QuoteObj.dart';
import 'QuoteCard.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<QuoteObj> quotes = [
    QuoteObj(text:'Be yourself; everyone else is already taken',author: 'Oscar Wild'),
    QuoteObj(text:'I have nothing to declare except my genius',author: 'Fady'),
    QuoteObj(text:'The truth is rarely pure and never simple',author:'kiki')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quotes of the day',
          style: TextStyle(
            fontFamily: 'Nexa',
            fontSize: 18
          ),
        ),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote,
        delete: (){
          setState(() {
            quotes.remove(quote);
          });
        }
        )).toList(),
        ),
      );
  }
}

import 'package:flutter/material.dart';
import 'QuoteObj.dart';
class QuoteCard extends StatelessWidget {
  
  final QuoteObj quote;
  final delete;
  QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontFamily: 'IndieFlower'
              ),
            ),
            SizedBox(height: 6.0,),
            Text(quote.author,
              style:TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
                fontFamily: 'Nexa'
              ) ,
            ),
            SizedBox(height: 8,),
            FlatButton.icon(
              onPressed: delete,
              label: Text(''),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}

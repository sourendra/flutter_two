import 'package:flutter/material.dart';
import 'package:flutter_two/widgets/user_transactions.dart';
import './models/Transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shadowColor: Colors.deepOrange,
              margin: EdgeInsets.only(left: 8, top: 8, right: 8),
              color: Colors.blue,
              elevation: 12,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(16),
                child: Text(
                  'CHART!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}

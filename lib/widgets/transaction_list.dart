import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: ListView.builder(
        itemBuilder: (context, index) {
          var transaction = transactions[index];
          return Card(
            margin: EdgeInsets.only(
              left: 8,
              top: 16,
              right: 8,
            ),
            elevation: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 8,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        DateFormat.yMMMd().format(transaction.date),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '\u20b9 ${transaction.amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}

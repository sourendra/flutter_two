import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'txn1',
      title: 'Shoes',
      amount: 2499.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'txn2',
      title: 'Shirt',
      amount: 1299.00,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount){
    final txn = Transaction(id: DateTime.now().toString(), title: title, amount: amount, date: DateTime.now());
    setState(() {
      _userTransactions.add(txn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

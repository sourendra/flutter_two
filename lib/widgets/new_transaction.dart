import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_two/models/Transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value)=> titleInput = value,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value)=> amountInput = value,
              controller: amountController,
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
            ),
            RaisedButton(
              color: Colors.purple,
              onPressed: () {
                addNewTransaction(titleController.text, double.parse(amountController.text));
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

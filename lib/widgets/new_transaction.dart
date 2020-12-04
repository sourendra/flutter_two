import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_two/models/Transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  void addTransaction() {
    final title = titleController.text;
    final amount = double.parse(amountController.text);
    if (title.isEmpty || amount <= 0) return;
    addNewTransaction(title, amount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      color: Color.fromARGB(255, 211, 211, 211),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value)=> titleInput = value,
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value)=> amountInput = value,
              controller: amountController,
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
              onSubmitted: (_) => addTransaction(),
            ),
            // RaisedButton(
            //   color: Colors.purple,
            //   onPressed: addTransaction,
            //   child: Text(
            //     'Add Transaction',
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            NeumorphicButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
              margin: EdgeInsets.only(top: 16, bottom: 16),
              onPressed: addTransaction,
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                color: Colors.white,
                // boxShape:
                //     NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                // shadowLightColor: Colors.white,
                // shadowDarkColor: Colors.grey,
                depth: 5,
                intensity: .75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

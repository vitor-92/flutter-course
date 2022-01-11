import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTx;

  NewTransaction(this.addNewTx);

  static const double defaultSpacing = 4;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 10, vertical: defaultSpacing),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(label: Text('Title')),
            ),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(label: Text('Amount')),
            ),
            TextButton(
                onPressed: () {
                  addNewTx(
                      title: titleController.text,
                      amount: double.parse(amountController.text));
                },
                child: const Text('add Transaction')),
          ],
        ),
      ),
    );
  }
}

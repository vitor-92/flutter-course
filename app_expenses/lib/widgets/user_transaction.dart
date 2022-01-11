import 'package:flutter/material.dart';

import '../widgets/new_transacion.dart';
import '../widgets/transation_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: '1', title: 'new boots', amount: 99.99, date: DateTime.now()),
    Transaction(
        id: '2', title: 'new shirt', amount: 49.99, date: DateTime.now()),
    Transaction(
        id: '3', title: 'new pants', amount: 199.99, date: DateTime.now()),
    Transaction(
        id: '4', title: 'new computer', amount: 1999.99, date: DateTime.now()),
  ];

  void _addNewTransaction({required String title, required double amount}) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      date: DateTime.now(),
      title: title,
      amount: amount,
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}

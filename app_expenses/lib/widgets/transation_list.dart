import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(this.userTransaction);

  static const double defaultSpacing = 4;

  final List<Transaction> userTransaction;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 450,
        child: Column(
          children: [
            ...userTransaction.map((tx) {
              return Card(
                color: Colors.white,
                margin: const EdgeInsets.only(top: defaultSpacing),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultSpacing),
                      height: 100,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.deepPurple, width: 2),
                          color: Colors.white),
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultSpacing, vertical: 10),
                      child: Center(
                        child: Text(
                          '\$ ${tx.amount}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultSpacing),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title.toUpperCase(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat('dd/MM/yy - H:m').format(tx.date),
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

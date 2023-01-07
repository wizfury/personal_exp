import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 't1', title: 'New shoes', amt: 99.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'Watches', amt: 19.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.purple)),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text('\$ ${tx.amt}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple)),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat().add_MMMMEEEEd().format(tx.date))
                  ],
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}

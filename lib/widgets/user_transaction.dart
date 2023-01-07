import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:personal_exp/widgets/new_transaction.dart';
import 'package:personal_exp/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 't1', title: 'New shoes', amt: 99.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'Watches', amt: 19.99, date: DateTime.now())
  ];

  void _addNewTransactions(String Title, double txamt) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: Title,
      amt: txamt,
      date: DateTime.now(),
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransactions),
        TransactionList(_userTransaction),
      ],
    );
  }
}

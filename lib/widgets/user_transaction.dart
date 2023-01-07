import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:personal_exp/widgets/new_transaction.dart';
import 'package:personal_exp/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatelessWidget {
  const UserTransaction({super.key});
  

  @override
  Widget build(BuildContext context) {
    
    final List<Transaction> _userTransaction = [
      Transaction(
          id: 't1', title: 'New shoes', amt: 99.99, date: DateTime.now()),
      Transaction(id: 't2', title: 'Watches', amt: 19.99, date: DateTime.now())
    ];
    return Column(children: [
      NewTransaction(),
      TransactionList(_userTransaction),
    ],);
  }
}
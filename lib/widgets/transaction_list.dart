import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {

  final List<Transaction> _userTransaction= [
    Transaction(
          id: 't1', title: 'New shoes', amt: 99.99, date: DateTime.now()),
      Transaction(id: 't2', title: 'Watches', amt: 19.99, date: DateTime.now())];


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

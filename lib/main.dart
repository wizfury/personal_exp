import 'package:flutter/material.dart';
import 'package:personal_exp/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(
          id: 't1', title: 'New shoes', amt: 99.99, date: DateTime.now()),
      Transaction(id: 't2', title: 'watches', amt: 19.99, date: DateTime.now())
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Personal exp"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Text("Chart")),
              color: Colors.amber,
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Text(tx.title),
                );
              }).toList(),
            )
          ]),
    );
  }
}

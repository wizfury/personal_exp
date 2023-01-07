import 'package:flutter/material.dart';
import 'package:personal_exp/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:personal_exp/widgets/new_transaction.dart';
import 'package:personal_exp/widgets/transaction_list.dart';
import 'package:personal_exp/widgets/user_transaction.dart';
import 'models/transaction.dart';
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
      
    ];

    // String titleinput='';
    // String amtinput='';

    final titlecontroller = TextEditingController();
    final amtcontroller = TextEditingController();

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
            UserTransaction(),
          ]),
    );
  }
}

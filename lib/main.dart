import 'package:flutter/material.dart';
import 'package:personal_exp/transaction.dart';
import 'package:intl/intl.dart';

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
      Transaction(id: 't2', title: 'Watches', amt: 19.99, date: DateTime.now())
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
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        controller: titlecontroller,
                        // onChanged: (val) {
                        //   // titleinput = val;
                        // },
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                        // onChanged: ((value) => amtinput = value),
                        controller: amtcontroller,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print(titlecontroller.text);
                          print(amtcontroller.text);
                        },
                        child: Text("Add transaction"),
                      )
                    ]),
              ),
            ),
            Column(
              children: transactions.map((tx) {
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
                                fontWeight: FontWeight.bold,
                                color: Colors.purple)),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(DateFormat().add_MMMMEEEEd().format(tx.date))
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ]),
    );
  }
}

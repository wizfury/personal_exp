import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTx);
  final Function addTx;
  final titlecontroller = TextEditingController();
  final amtcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titlecontroller,
            
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            
            controller: amtcontroller,
          ),
          ElevatedButton(
            onPressed: () {
              addTx(titlecontroller.text,double.parse(amtcontroller.text));
            },
            child: Text("Add transaction"),
          )
        ]),
      ),
    );
  }
}

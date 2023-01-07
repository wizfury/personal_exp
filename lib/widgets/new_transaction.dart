import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  const NewTransaction({super.key});

  @override
  Widget build(BuildContext context) {


    final titlecontroller = TextEditingController();
    final amtcontroller = TextEditingController();


    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
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
    );
  }
}

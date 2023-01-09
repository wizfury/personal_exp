import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this.transactions);

  final List<Transaction> transactions;
  
  

  @override
  
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      
        
        child: ListView.builder(
          itemBuilder: (ctransactions,index) {
              return Card(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.purple)),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Text('\$ ${transactions[index].amt}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.purple)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transactions[index].title,
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(DateFormat().add_MMMMEEEEd().format(transactions[index].date))
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: transactions.length,
          
        
      ),
    );
  }
}

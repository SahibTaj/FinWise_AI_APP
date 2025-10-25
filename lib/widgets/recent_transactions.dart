import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  const RecentTransactions({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Recent Transactions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ...transactions.map(
          (tx) => ListTile(
            leading: CircleAvatar(
              backgroundColor: tx["amount"] < 0
                  ? Colors.red[100]
                  : Colors.green[100],
              child: Icon(
                tx["amount"] < 0 ? Icons.arrow_downward : Icons.arrow_upward,
                color: tx["amount"] < 0 ? Colors.red : Colors.green,
              ),
            ),
            title: Text(tx["title"]),
            subtitle: Text(tx["date"]),
            trailing: Text(
              "\$${tx["amount"].abs()}",
              style: TextStyle(
                color: tx["amount"] < 0 ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
          ),
        ),
      ],
    );
  }
}

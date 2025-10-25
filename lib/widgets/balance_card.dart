import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final double income;
  final double expenses;
  const BalanceCard({super.key, required this.income, required this.expenses});

  @override
  Widget build(BuildContext context) {
    double balance = income - expenses;
    return Card(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      // color: Colors.blue[50],
      // elevation: 2,
      margin: const EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12),
          Text(
            "Total Balance",
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          // SizedBox(height: 8),
          Text(
            "\$${balance.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                icon: Icon(Icons.add, color: Colors.white),
                label: Text(
                  "Add Income",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.remove, color: Colors.black),
                label: Text(
                  "Add Expense",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(height: 12),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({required this.expense, super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  //12.4454=>12.44 this is done by tostringAsFixed
                  '\$${expense.amount.toStringAsFixed(2)}',
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(width: 8),
                    Text(
                      expense.date.toString(),
                    ),
                  ],
                ),
              ],
            ) //12.4454=>12.44 this is done by tostringAsFixed
          ],
        ),
      ),
    );
  }
}
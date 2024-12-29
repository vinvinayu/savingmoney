import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SavingMoneys'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.bar_chart ),
            onPressed: () {
              Navigator.pushNamed(context, '/report');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to your Dashboard!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add-transaction');
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
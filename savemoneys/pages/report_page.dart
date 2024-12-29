import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Report'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'No transactions available.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
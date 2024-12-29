import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/add_transaction_page.dart'; // Ensure this file is imported
import 'pages/report_page.dart';

void main() {
  runApp(SavingMoneysApp());
}

class SavingMoneysApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SavingMoneys',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/add-transaction': (context) => AddTransactionPage(),
        '/report': (context) => ReportPage(),
      },
    );
  }
}
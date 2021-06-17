import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
// import 'package:bytebank/http/webclient.dart';

// import 'models/contact.dart';
// import 'models/transaction.dart';

void main() {
  runApp(BytebankApp());
  // save(Transaction(300.0, Contact(13, 'João', 2000)))
  //     .then((transactions) => print('post transaction $transactions'));
  // findAll().then((transactions) => print('new transactions $transactions'));
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}

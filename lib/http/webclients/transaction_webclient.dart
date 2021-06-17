import 'dart:convert';

import 'package:bytebank/http/webclient.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response = await client
        .get('${baseUrl}transactions')
        .timeout(Duration(seconds: 10));

    final List<dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction> save(Transaction transaction) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response = await client.post('${baseUrl}transactions',
        headers: {
          'Content-Type': 'application/json',
          'password': '1000',
        },
        body: transactionJson);

    return Transaction.fromJson(jsonDecode(response.body));
  }

  // List<Transaction> _toTransactions(Response response) {
  //   final List<dynamic> decodedJson = jsonDecode(response.body);

  //   return decodedJson
  //       .map((dynamic json) => Transaction.fromJson(json))
  //       .toList();

  //   // final List<Transaction> transactions = [];
  //   // // final List<Transaction> transactions = List(); // deprecated

  //   // for (Map<String, dynamic> transactionJson in decodedJson) {
  //   //   transactions.add(Transaction.fromJson(transactionJson));
  //   // }

  // }
}

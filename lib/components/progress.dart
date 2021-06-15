import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  // const Progress({Key? key, this.message}) : super(key: key);

  final String message;
  Progress({this.message = 'Carregando'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Text(message),
        ],
      ),
    );
  }
}

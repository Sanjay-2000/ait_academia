import 'package:flutter/material.dart';

class Fees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Fees'),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('__________:(FEES):_________')));
  }
}

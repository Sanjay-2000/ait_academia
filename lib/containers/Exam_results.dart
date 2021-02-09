import 'package:flutter/material.dart';

class ExamResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('ExamResults'),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('__________:(RESULTS):_________')));
  }
}

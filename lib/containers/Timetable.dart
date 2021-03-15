import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Time Table'),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('-----TimeTable------')));
  }
}

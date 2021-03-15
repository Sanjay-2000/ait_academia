import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Events'),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('_____Events here______')));
  }
}

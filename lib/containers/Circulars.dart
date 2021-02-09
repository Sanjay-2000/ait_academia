import 'package:flutter/material.dart';

class Circulars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Circulars'),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('******* C-I-R-C-U-L-A-R-S  *******')));
  }
}

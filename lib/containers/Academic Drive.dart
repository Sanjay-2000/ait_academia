import 'package:flutter/material.dart';

class AcademicDrive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Academic Drive'),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
                '_______________________________________________________________________________DRIVE________________________________________________________________')));
  }
}

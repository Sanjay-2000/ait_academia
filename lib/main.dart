import 'package:f_academia/containers/Academic%20Drive.dart';
import 'package:f_academia/containers/Attendence.dart';
import 'package:f_academia/containers/Circulars.dart';
import 'package:f_academia/containers/Events.dart';
import 'package:f_academia/containers/Exam_results.dart';
import 'package:f_academia/containers/Fees.dart';
import 'package:f_academia/containers/My%20courses.dart';
import 'package:f_academia/containers/Timetable.dart';
import 'package:flutter/material.dart';
import 'menu.dart';

void main() {
  runApp(Funacademia());
}

class Funacademia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red[900], scaffoldBackgroundColor: Colors.white),
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/first': (context) => MyCourses(),
        '/second': (context) => Attendence(),
        '/third': (context) => Fees(),
        '/fourth': (context) => ExamResults(),
        '/fifth': (context) => Events(),
        '/sixth': (context) => TimeTable(),
        '/seventh': (context) => Circulars(),
        '/eighth': (context) => AcademicDrive(),
      },
    );
  }
}

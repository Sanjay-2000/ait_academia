import 'package:f_academia/cards.dart';
import 'package:flutter/material.dart';
import 'cards.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(icon: Icon(Icons.menu), onPressed: () {});
        }),
        title: Text('ACADEMIA'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: () {
                print('works');
              })
        ],
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/ait.png'),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
            width: 240,
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
          Expanded(
            child: Cards(
              label: 'My Courses',
              icons: Icons.book,
              colour: Colors.red,
              onpress: () {
                Navigator.pushNamed(context, '/first');
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => MyCourses()));
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Attendence',
              icons: Icons.list,
              colour: Colors.yellow,
              onpress: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Fees',
              icons: Icons.money,
              colour: Colors.blueGrey,
              onpress: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Exam Results',
              icons: Icons.arrow_forward_sharp,
              colour: Colors.blue,
              onpress: () {
                Navigator.pushNamed(context, '/fourth');
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Event',
              icons: Icons.people,
              colour: Colors.yellow,
              onpress: () {
                Navigator.pushNamed(context, '/fifth');
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Timetable',
              icons: Icons.alarm,
              colour: Colors.blueGrey,
              onpress: () {
                Navigator.pushNamed(context, '/sixth');
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Circulars',
              icons: Icons.file_copy,
              colour: Colors.red,
              onpress: () {
                Navigator.pushNamed(context, '/seventh');
              },
            ),
          ),
          Expanded(
            child: Cards(
              label: 'Academic Drive',
              icons: Icons.add_to_drive,
              colour: Colors.yellow,
              onpress: () {
                Navigator.pushNamed(context, '/eighth');
              },
            ),
          ),
          SizedBox(
            height: 10,
            width: 220,
            child: Divider(
              color: Colors.red,
              thickness: 1.5,
            ),
          ),
          Container(
            color: Colors.black,
            height: 40,
          )
        ],
      ),
    );
  }
}

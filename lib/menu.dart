import 'package:f_academia/card_widget.dart';
import 'package:flutter/material.dart';
import 'card_widget.dart';
import 'main.dart';

class Imageit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<CardMenu> listOfCards = [];
  @override
  void initState() {
    listOfCards.addAll([
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/second',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
      CardMenu()
        ..label = 'My Courses'
        ..icons = Icons.book
        ..colour = Colors.red
        ..route = '/first',
    ]);
    super.initState();
  }

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

      // body: Column(
      //   children: [
      //     // Padding(
      //     //   padding: const EdgeInsets.all(8.0),
      //     //   child: Row(
      //     //     mainAxisAlignment: MainAxisAlignment.center,
      //     //     children: [
      //     //       Image.asset(
      //     //         'images/ait.png',
      //     //         height: 70.0,
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     ListView.builder(
      //       itemBuilder: (context, index) {
      //         return CardWidget(      //           cardMenu: listOfCards[index],
      //         );
      //       },
      //       itemCount: listOfCards.length,
      //     ),
      //   ],
      // ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return CardWidget(
            cardMenu: listOfCards[index],
          );
        },
        itemCount: listOfCards.length,
      ),

      //  ListView(
      //   children: <Widget>[
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image(
      //           image: AssetImage('images/ait.png'),
      //           height: 60,
      //           alignment: Alignment.center,
      //         ),
      //       ],
      //     ),
      //     SizedBox(
      //       height: 5,
      //       child: Divider(
      //         color: Colors.black,
      //       ),
      //     ),
      //     CardWidget(
      //       label: 'My Courses',
      //       icons: Icons.book,
      //       colour: Colors.red,
      //       route: '/first',
      //     ),
      //     CardWidget(
      //       label: 'Attendence',
      //       icons: Icons.list_alt,
      //       colour: Colors.yellow,
      //       route: '/second',
      //     ),
      //     CardWidget(
      //       label: 'Fees',
      //       icons: Icons.money,
      //       colour: Colors.blueGrey,
      //       route: '/third',
      //     ),
      //     CardWidget(
      //       label: 'Exam Result',
      //       icons: Icons.arrow_forward,
      //       colour: Colors.blue,
      //       route: '/fourth',
      //     ),
      //     CardWidget(
      //       label: 'Event',
      //       icons: Icons.people_outline_sharp,
      //       colour: Colors.teal,
      //       route: '/fifth',
      //     ),
      //     CardWidget(
      //       label: 'TimeTable',
      //       icons: Icons.timelapse,
      //       colour: Colors.yellow,
      //       route: '/sixth',
      //     ),
      //     CardWidget(
      //       label: 'Circulars',
      //       icons: Icons.file_copy,
      //       colour: Colors.blue,
      //       route: '/seventh',
      //     ),
      //     CardWidget(
      //       label: 'Academic Drive',
      //       icons: Icons.add_to_drive,
      //       colour: Colors.red,
      //       route: '/eighth',
      //     ),
      //     Container(
      //       color: Colors.black,
      //       height: 40,
      //     )
      //   ],
      // ),
    );
  }
}

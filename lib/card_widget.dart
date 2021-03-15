import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.cardMenu});
  final CardMenu cardMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: cardMenu.colour),
          borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, cardMenu.route);
        },
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: cardMenu.colour,
                  border: Border.all(
                      color: cardMenu.colour, style: BorderStyle.solid),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      bottomLeft: Radius.circular(7))
                  // borderRadius: BorderRadius.circular(7),
                  ),
              child: Icon(
                cardMenu.icons,
                color: Colors.white,
                size: 35,
              ),
              width: 75,
              height: double.infinity,
              // height: double.infinity,
            ),

            SizedBox(
              width: 40.0,
            ),

            // container with label
            Center(
              child: Container(
                child: Text(
                  cardMenu.label,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Cards extends StatelessWidget {
//   Cards({this.label, this.icon});
//   final String label;
//   final Widget icon;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         child: Card(
//           margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
//           child: ListTile(
//             hoverColor: Colors.red,
//             leading: icon,
//             dense: true,
//             title: Text(
//               label,
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold),
//               textAlign: TextAlign.justify,
//             ),
//             onTap: () {
//               print('click works');
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

class CardMenu {
  String label;
  IconData icons;
  Color colour;
  String route;
}

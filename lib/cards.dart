import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({this.label, this.icons, this.colour, this.onpress});
  final String label;
  final IconData icons;
  final Color colour;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: colour),
          borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        onPressed: onpress,
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Icon(
                  icons,
                  color: Colors.white,
                  size: 35,
                ),
                width: 75,
                color: colour,
              ),

              SizedBox(
                width: 30.0,
              ),

              // container with label
              Center(
                child: Expanded(
                  child: Container(
                    child: Text(
                      label,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
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

import 'package:flames/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class temp extends StatefulWidget {
  const temp({super.key});
  @override
  State<temp> createState() => _tempState();
}

class _tempState extends State<temp> {
  List<String> _languages = ["English", "Hindi"];
  List<String> myInterest = [
    "Thriller",
    "Sci-Fi",
    "Superhero",
    "Mythology",
    "Fantasy",
    "Action",
    "Mystery",
    "Horror",
    "Action",
    "Romance",
    "Thriller",
    "Sci-Fi",
    "Superhero",
    "Mythology",
    "Fantasy",
    "Action",
    "Mystery",
    "Horror",
    "Action",
    "Romance"
  ];

  @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  //   bottom(context);
  // }

  Widget build(BuildContext context) {
    return Container();
  }
}

// bottom(context) {
//   {
//     showModalBottomSheet<void>(
//         backgroundColor: Colors.white.withOpacity(0),
//         isScrollControlled: true,
//         context: context,
//         builder: (BuildContext context) {
//           var _character;
//           return Container(
//             height: MediaQuery.of(context).size.height / 1.3,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20)),
//                 color: Colors.pink[50]),
//             child: DefaultTabController(
//                 length: 2,
//                 child: Scaffold(
//                   appBar: AppBar(
//                       centerTitle: true,
//                       title: Text(
//                         "Education",
//                         style: TextStyle(color: Colors.pink[400], fontSize: 20),
//                       ),
//                       bottom: TabBar(
//                         tabs: [
//                           Tab(
//                             icon: Icon(
//                               Icons.minimize_rounded,
//                             ),
//                           ),
//                           Tab(
//                             icon: Icon(Icons.minimize_rounded),
//                           )
//                         ],
//                       )),
//                   body: TabBarView(
//                     children: [
//                       Container(
//                         color: Colors.amber,
//                       ),
//                       Container(
//                         color: Colors.teal,
//                       )
//                     ],
//                   ),
//                 )),
//           );
//         });
//   }
// }

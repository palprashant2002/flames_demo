import 'package:flames/temp.dart';
import 'package:flutter/material.dart';

import 'detailprofile.dart';
import 'editprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'home',
      routes: {
        'home' :(context) => MyHomePage(title: 'Find Flames'),
        'profile':(context) => DetailProfile(),
        'edit':(context) => EditProfile(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Home(),
    Icon(
      Icons.favorite,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProfile(),
                ));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(8, 4, 0, 4),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/user1.jpg"),
                    fit: BoxFit.cover),
                color: Colors.white,
                shape: BoxShape.circle),
          ),
        ),
        centerTitle: true,
        title: Text(widget.title,
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
        actions: [
          
          Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.commit,
            color: Colors.black,
            size: 35,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.pink[300],
        ),
        selectedItemColor: Colors.pink[300],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Chat")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Image(image: AssetImage("assets/images/user5.jpg")),
      ),
    );
  }
}
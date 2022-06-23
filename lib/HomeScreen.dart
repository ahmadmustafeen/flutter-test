import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(title: Text('')),
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: new Text(
          'Home Screen',
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //     // child: Icon(Icons.search),
        //   ),
        //   Icon(Icons.more_vert),
        // ],
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FirstScreen();
                }),
              ); // Respond to button press
            },
            child: Container(
              width: 180,
              child: Center(
                child: Text("Log out",
                    style: TextStyle(
                      color: Colors.red,
                    )),
              ),
            ),
          )
        ],
      )),
      // drawer: Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text('Ibex Coin'),
      //       ),
      //       ListTile(
      //         title: Text('Home'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Setting'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) {
      //               return FirstScreen();
      //             }),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

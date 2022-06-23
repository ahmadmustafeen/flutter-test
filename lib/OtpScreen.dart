import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  // const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
               Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'OTP',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                child: Text("Verify OTP",
                    style: TextStyle(
                      color: Colors.green,
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

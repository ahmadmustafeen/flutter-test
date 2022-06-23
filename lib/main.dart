// import 'dart:html';

import 'package:demo/HomeScreen.dart';
import 'package:demo/SignUp.dart';
import 'package:flutter/material.dart';
// import 'dart:async';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash2(),
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new FirstScreen(),
      title: new Text(
        'Ibex Coin',
        textScaleFactor: 2,
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      // title: new Text('Ibex Coin',textScaleFactor: 2,),
      image: new Image.network('https://i.ibb.co/b5TJ06D/App-icon.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,

      loaderColor: Colors.blue,
    );
  }
}

class FirstScreen extends StatelessWidget {
  // @override
  // final myController = TextEditingController();
  final _email = new TextEditingController();
  final _password = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Text(
                'Ibex Coin',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              child: Text(
                'The Future Cryptocurrency',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            // Container(
            //   child: Text(
            //     _email.text,
            //     style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.green,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 80,
            ),
            
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                    controller: _email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  obscureText: true,
                   controller: _password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                     hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                var email = _email.text;
                var password = _password.text;
                print(email);
                print(password);

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {
                //     return HomeScreen();
                //   }),
                // ); // Respond to button press
              },
              child: Container(
                width: 100,
                child: Center(
                  child: Text("Login",
                      style: TextStyle(
                        color: Colors.amber,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              child: Text(
                'New at Ibex Crypto Network ?',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUp();
                  }),
                ); // Respond to button press
              },
              child: Container(
                width: 150,
                child: Center(
                  child: Text("Signup",
                      style: TextStyle(
                        color: Colors.green,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

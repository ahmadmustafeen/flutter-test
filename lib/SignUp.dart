import 'package:demo/OtpScreen.dart';
import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  // const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
@override

  final _email = new TextEditingController();
  final _password = new TextEditingController();
  final _name = new TextEditingController();
  final _number = new TextEditingController();
  Widget build(BuildContext context) {
    return new Scaffold(
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
                  controller: _name,
                  decoration: InputDecoration(
                    labelText: 'Name',
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
                  controller: _number,
                    keyboardType:TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Number',
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {
                //     return OTPScreen();
                //   }),
                // ); // Respond to button press
              },
              child: Container(
                width: 100,
                child: Center(
                  child: Text("Sign In",
                      style: TextStyle(
                        color: Colors.amber,
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

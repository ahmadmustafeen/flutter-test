import 'package:demo/OtpScreen.dart';
import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  // const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

final _email = new TextEditingController();
final _password = new TextEditingController();
final _userName = new TextEditingController();
final _phoneNumber = new TextEditingController();

void registerHandler() {
  print(_email.text);
  print(_password.text);
  print(_userName.text);
  print(_phoneNumber.text);
}

class _SignUpState extends State<SignUp> {
  @override
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
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  controller: _userName,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: "Name",
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
                  controller: _phoneNumber,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: registerHandler,
              child: Container(
                width: 100,
                child: Center(
                  child: Text("Register",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      )),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return OTPScreen();
                  }),
                ); // Respond to button press
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

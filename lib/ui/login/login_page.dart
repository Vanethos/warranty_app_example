import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to be the same color as the image background
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // gets the image asset from the assets folder
            Image.asset("assets/warranty-logo.png"),
            // Uses all the remaining space in the Scaffold
            Expanded(
              // aligns the button to the bottom of the expanded space
              child: Align(
                alignment: Alignment.bottomCenter,
                // A widget that "avoids operating system interfaces" eg:
                // iPhone X home button area
                child: SafeArea(
                  // using a container to add bottom margin
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        // the action that occur on button press
                        onPressed: () => print(""),
                        child: Text("Login"),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
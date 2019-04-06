import 'package:flutter/material.dart';
import 'package:warranty_app_example/ui/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
  ],
);

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
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
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
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  // A widget that "avoids operating system interfaces" eg:
                  // iPhone X home button area
                  child: SafeArea(
                    // using a container to add bottom margin
                    child: Container(
                      // extends the width of the container to be as long as the
                      // parent
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 8, left: 20, right: 20),
                      child: RaisedButton(
                        padding: EdgeInsets.all(12),
                        color: Theme.of(context).primaryColor,
                        // the action that occur on button press
                        onPressed: () => _handleSignIn()
                            .then((FirebaseUser user) => navigateToHomePage(context, user))
                            .catchError((e) => print(e)),
                        child: Row(
                          // centers the row horizontally
                          mainAxisAlignment: MainAxisAlignment.center,
                          // centers the row vertically
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.vpn_key,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Login".toUpperCase(),
                              // adds text style to the Text Widget
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
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

  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("signed in " + user.displayName);
    return user;
  }

}

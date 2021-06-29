import 'package:bitcoin_price_tracker_app/Registration_BPT.dart';
import 'package:bitcoin_price_tracker_app/logInScreen_BPT.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff40C4FF), Color(0xffFFAB40)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Image.asset('images/icons8-bitcoin-64.png'),
                  height: 100.0,
                  width: 100.0,
                ),
                Text(
                  'Bitcoin Price Tracker',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    foreground: Paint()..shader = linearGradient,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5.0),
                child: MaterialButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Material(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(5.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

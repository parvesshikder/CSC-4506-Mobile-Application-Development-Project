//Shikder Md Parves 1737407

import 'package:bitcoin_price_tracker_app/WelcomeScreen_BPT.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Bitcoin_Price_Tracker());
}

class Bitcoin_Price_Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: Welcome.id,

      routes: {
        Welcome.id: (context) => Welcome(),
      },
    );
  }
}

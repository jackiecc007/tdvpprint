import 'dart:async';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'maintopic.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg0001.png"),
            fit: BoxFit.cover,
          ),
        ),
        child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Image.asset(
                'assets/images/logo.png',
              ),
              Text(
                'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n'
                'Territorial Defence Volunteers Printing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Charmonman',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff04066b),
                ),
              ),
            ],
          ),
        
      ),
    );
  }
}

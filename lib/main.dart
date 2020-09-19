import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh24/onBoard.dart';

void main() async => {
      WidgetsFlutterBinding.ensureInitialized(),

      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]), // To turn off landscape mode
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SplashScreen(),
        ),
      ))
    };

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
      SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Color(0xff8dd010),
          systemNavigationBarColor: Color(0xff8dd010),
        ),
      );

//      Navigator.pushReplacement(
//          context, PageRouteBuilder(pageBuilder: (_, __, ___) => Home()));
      Navigator.pushReplacement(
          context, PageRouteBuilder(pageBuilder: (_, __, ___) => OnBoard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFEDECF2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Image(
              image: AssetImage('assets/spash.gif'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fresh24/home.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Image(
                image: AssetImage('assets/onBoardSc4.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Image(
                image: AssetImage('assets/onBoardSc5.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Image(
                image: AssetImage('assets/onBoardSc6.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Image(
                image: AssetImage('assets/onBoardSc1.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Image(
                image: AssetImage('assets/onBoardSc2.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/onBoardSc3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.lightGreenAccent,
                      ),
                      width: 150.0,
                      child: FlatButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home())),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    return new MaterialApp(
      home: Builder(
          builder: (context) => LiquidSwipe(
                enableLoop: false,
                pages: pages,
                fullTransitionValue: 300,
                enableSlideIcon: true,
              )),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  Widget check() {
    if (_page == 0) {
      return Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
              RaisedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  final CurvedNavigationBarState navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState.setPage(_page - 1);
                },
              )
            ],
          ),
        ),
      );
    }
    if (_page == 1) {
      return Container(
        color: Colors.red,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
              RaisedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  final CurvedNavigationBarState navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState.setPage(_page - 1);
                },
              )
            ],
          ),
        ),
      );
    }
    if (_page == 2) {
      return Container(
        color: Colors.green,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
              RaisedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  final CurvedNavigationBarState navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState.setPage(_page - 1);
                },
              )
            ],
          ),
        ),
      );
    }
    if (_page == 3) {
      return Container(
        color: Colors.black12,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
              RaisedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  final CurvedNavigationBarState navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState.setPage(_page - 1);
                },
              )
            ],
          ),
        ),
      );
    }
    if (_page == 4) {
      return Container(
        color: Colors.pink,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
              RaisedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  final CurvedNavigationBarState navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState.setPage(_page - 1);
                },
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: check());
  }
}

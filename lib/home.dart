import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh24/productPage.dart';

import 'crousal_pro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  void _toggle() {
    _innerDrawerKey.currentState.toggle(
        // direction is optional
        // if not set, the last direction will be used
        //InnerDrawerDirection.start OR InnerDrawerDirection.end
        direction: InnerDrawerDirection.start);
  }

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  Widget check() {
    if (_page == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(78.0))),
            height: 200.0,
            width: double.infinity,
            child: Carousel(
              images: [
                NetworkImage(
                    'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                NetworkImage(
                    'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                NetworkImage(
                    'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                NetworkImage(
                    'https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Color(0xff8dd010),
              indicatorBgPadding: 5.0,
//                  dotBgColor: Colors.purple.withOpacity(0.5),
              dotBgColor: Colors.transparent,
              borderRadius: true,
            ),
          ),
          SizedBox(height: 35.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Wrap(
              children: <Widget>[
                Text('Vegetables',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('&',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
//                          fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Spices',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: Center(
                child: Container(
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    height: 200.0,
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductPage()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 150.0,
                                width: 150.0,
                                decoration: BoxDecoration(
//                                  color: Color(0xff8dd010),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Image.asset('assets/vegitables.png'),
                              ),
                              SizedBox(height: 10.0),
                              Text('Vegetables',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
//                                        color: Color(0xff8dd010),
                                      color: Colors.white,
                                      fontSize: 18.0))
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductPage()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 150.0,
                                width: 150.0,
                                decoration: BoxDecoration(
//                                  color: Color(0xff8dd010),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Image.asset('assets/spices.png'),
                              ),
                              SizedBox(height: 10.0),
                              Text('Spices',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
//                                        color: Color(0xff774739),
                                      color: Colors.white,
                                      fontSize: 18.0))
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      );
    }
    if (_page == 1) {
      return Container(
        color: Color(0xff8dd010),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
            ],
          ),
        ),
      );
    }
    if (_page == 2) {
      return Container(
        color: Color(0xff8dd010),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
            ],
          ),
        ),
      );
    }
  }

//  Future<bool> _backPressed() {
//    onWillPop: () async {
//      return false;
//    },
//  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: SafeArea(
        child: InnerDrawer(
//        tapScaffoldEnabled: true,
          key: _innerDrawerKey,
          onTapClose: true, // default false
          swipe: true, // default true
          colorTransitionChild: Color(0xff8dd010), // default Color.black54
//        colorTransitionScaffold: Colors.black54, // default Color.black54
          colorTransitionScaffold: Colors.black12, // default Color.black54

          //When setting the vertical offset, be sure to use only top or bottom
//        offset: IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),

          scale: IDOffset.horizontal(0.8), // set the offset in both directions

          proportionalChildArea: true, // default true
          borderRadius: 50, // default 0
          leftAnimationType: InnerDrawerAnimation.static, // default static
          rightAnimationType: InnerDrawerAnimation.quadratic,
          backgroundDecoration: BoxDecoration(
              color:
                  Colors.white), // default  Theme.of(context).backgroundColor

          //when a pointer that is in contact with the screen and moves to the right or left
          onDragUpdate: (double val, InnerDrawerDirection direction) {
            // return values between 1 and 0
            print(val);
            // check if the swipe is to the right or to the left
            print(direction == InnerDrawerDirection.start);
          },

          innerDrawerCallback: (a) =>
              print(a), // return  true (open) or false (close)
          leftChild: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/logo.png',
                      width: 160,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.home,
                        color: Color(0xff8dd010),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Color(0xff8dd010),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.search,
                        color: Color(0xff8dd010),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            color: Color(0xff8dd010),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.user,
                        color: Color(0xff8dd010),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: Color(0xff8dd010),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.questionCircle,
                        color: Color(0xff8dd010),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Help",
                        style: TextStyle(
                            color: Color(0xff8dd010),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          // required if rightChild is not set
          rightChild: Container(),
          scaffold: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              backgroundColor: Color(0xff8dd010),
              items: <Widget>[
                Image.asset('assets/home.png', height: 30.0),
                Image.asset('assets/search.png', height: 30.0),
                Image.asset('assets/user.png', height: 30.0),
              ],
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
            ),
            backgroundColor: Color(0xff8dd010),
            appBar: AppBar(
              leading: GestureDetector(
                  onTap: () {
                    _toggle();
                  },
                  child: Container(
                      color: Color(0xff8dd010), child: Icon(Icons.menu))),
              backgroundColor: Color(0xff8dd010),
              title: Text("Fresh 24"),
            ),
            body: check(),
          ),
        ),
      ),
    );
  }
}
//

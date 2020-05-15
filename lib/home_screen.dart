import 'package:flutter/material.dart';
import 'package:flutterwebapp/bloc/home_bloc.dart';
import 'package:flutterwebapp/widget/header.dart';
import 'package:flutterwebapp/widget/menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _controller;
  final _homeBloc = HomeBloc();

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      print('reach the bottom');
      _homeBloc.scrollSink(3);
    } else if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      print('reach the top');
      _homeBloc.scrollSink(1);
    } else {
      _homeBloc.scrollSink(2);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
  }

  Widget sideNav({IconData icon, bool isPositioned = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Icon(
            icon,
            color: isPositioned ? Colors.blue : Colors.black,
          ),
          isPositioned
              ? CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 2.0,
                )
              : SizedBox(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Image.asset('assets/header.png'),
                Container(
                  //color: Colors.grey,
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
                  height: 300.0,
                  width: double.maxFinite,
                  child: Card(child: Center(child: Text('Search'))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  //color: Colors.grey,
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
                  height: 300.0,
                  width: double.maxFinite,
                  child: Card(child: Center(child: Text('Promotion'))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  //color: Colors.grey,
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
                  height: 200.0,
                  width: double.maxFinite,
                  child: Card(child: Center(child: Text('Offer'))),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: StreamBuilder<int>(
                stream: _homeBloc.scrollStream,
                builder: (context, snapshot) {
                  return Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0, top: 10.0, right: 5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          sideNav(
                            icon: Icons.search,
                            isPositioned:
                                (snapshot.hasData && (snapshot.data == 1))
                                    ? true
                                    : false,
                          ),
                          sideNav(
                            icon: Icons.monetization_on,
                            isPositioned:
                                (snapshot.hasData && (snapshot.data == 2))
                                    ? true
                                    : false,
                          ),
                          sideNav(
                            icon: Icons.local_offer,
                            isPositioned:
                                (snapshot.hasData && (snapshot.data == 3))
                                    ? true
                                    : false,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

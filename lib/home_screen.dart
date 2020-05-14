import 'package:flutter/material.dart';
import 'package:flutterwebapp/widget/menu.dart';

class HomeScreen extends StatelessWidget {

  Widget actionPart(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Thursday, 14 May 2020',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey,
                height: 1.0,
                width: 150.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Follow Us',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey,
                height: 1.0,
                width: 200.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(
                'assets/social_media.png',
              ),
            ],
          ),
        ),
        Center(
          child: Image.asset(
            'assets/logo.png',
            //height: 200.0,
            //width: 250.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0, top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Epaper',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey,
                height: 1.0,
                width: 50.0,
              ),
              Image.asset(
                'assets/degree.png',
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: actionPart()
            ),
            centerTitle: true,
            expandedHeight: 250.0,
            floating: true,
            pinned: true,
            bottom: preferredSizeWidget,
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Container(
                  color: Colors.grey,
                  height: 1.0,
                  width: double.maxFinite,
                ),
                Center(
                  child: Text('Body'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

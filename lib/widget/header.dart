import 'package:flutter/material.dart';

Widget header({String name, String mobileNo}) {
  return Stack(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 15.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    size: 20.0,
                  )
                ],
              ),
              Text(
                mobileNo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 200.0,
        child: Container(
          //color: Colors.grey,
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
          height: 100.0,
          width: double.maxFinite,
          child: Card(child: Center(child: Text('Search1'))),
        ),
      )
    ],
  );
}

import 'package:flutter/material.dart';

Widget imageStructure({String imageName}) {
  return Image.asset(
    'assets/$imageName',
    height: 20.0,
    width: 20.0,
  );
}

Text menuItems({String label}) {
  return Text(
    label,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 16.0
    ),
  );
}

PreferredSizeWidget preferredSizeWidget = AppBar(
  backgroundColor: Colors.white,
  title: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        imageStructure(imageName: 'menu_icon.png'),
        imageStructure(imageName: 'home_icon.png'),
        imageStructure(imageName: 'search.jpg'),
        menuItems(label: 'Coronavirus'),
        menuItems(label: 'Nation'),
        menuItems(label: 'World'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            menuItems(label: 'State'),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: 20.0,
            )
          ],
        ),
        menuItems(label: 'Cities'),
        menuItems(label: 'Opinions'),
        menuItems(label: 'Business'),
        menuItems(label: 'Features'),
        menuItems(label: 'Diaspora'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            menuItems(label: 'More'),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: 20.0,
            )
          ],
        ),
        menuItems(label: 'See Classifieds'),
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Color(0xff0c1840),
          child: Text(
            'Advertise with Us',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ),
  ),
);
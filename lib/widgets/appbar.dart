import 'package:flutter/material.dart';
import 'package:fluttermyui2/styleguide/colors.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: thirdColor.withOpacity(0.03),
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.sort),
      color: secondColor,
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        color: secondColor,
        onPressed: () {},
      )
    ],
  );
}
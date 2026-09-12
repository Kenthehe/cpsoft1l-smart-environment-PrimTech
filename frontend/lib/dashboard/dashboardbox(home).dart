import 'package:flutter/material.dart';

//==4BOXES AT HOME==//
Widget dashboardBox4({required Widget child}) {
  return Container(
    width: 170,
    height: 110,
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 219, 219, 219)),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(blurRadius: 0)],
    ),
    child: child,
  );
}

Widget topbar({required Widget child}) {
  return Container(
    height: 90,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 206, 205, 205)),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(blurRadius: 0.1)],
    ),
    child: child,
  );
}

Widget scheduleddispense({required Widget child}) {
  return Container(
    height: 200,
    width: 100,
    padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 185, 211, 205),
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: child,
        ),
      ],
    ),
  );
}

Widget schedule({required Widget child}) {
  return Container(
    height: 60,
    margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
    padding: EdgeInsets.fromLTRB(5, 2, 5, 0),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 206, 205, 205)),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(blurRadius: 0.1)],
    ),
    child: child,
  );
}

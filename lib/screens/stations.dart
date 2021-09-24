import 'package:flutter/material.dart';
import 'package:spacex/screens/main_drawer.dart';

class Stations extends StatefulWidget {
  @override
  _StationsState createState() => _StationsState();
}

class _StationsState extends State<Stations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stations',
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'List of Available Stations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Abuja',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              'Spock',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              'International Space Station',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              'Moon',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

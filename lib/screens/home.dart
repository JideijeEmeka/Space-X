import 'package:flutter/material.dart';
import 'package:spacex/screens/load_wallet.dart';
import 'package:spacex/screens/main_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SpaceX Odyssey',
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to\nSpaceX Odyssey',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'SpaceX runs a futuristic space travel system within our solar system with payments done with bitcoin currency (BTC) wallet system. They have two rockets: Falcon 1 and Falcon 9',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoadWallet()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 150,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                      Icon(
                        Icons.forward,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spacex/screens/main_drawer.dart';
import 'package:spacex/screens/widgets/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadWallet extends StatefulWidget {
  @override
  _LoadWalletState createState() => _LoadWalletState();
}

class _LoadWalletState extends State<LoadWallet> {
  TextEditingController loaderController = new TextEditingController();

  int bal = 0;
  int abjtomoon = 100;
  int moontospock = 250;
  int marstoiss = 700;

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  late int savedBal;

  void _loadBal() {
    setState(() {
      bal += int.parse(loaderController.text);
      loaderController.clear();
    });
    prefs.setInt("saved", bal);
  }

  void _abjtomoon() {
    if (bal >= abjtomoon) {
      setState(() {
        bal -= abjtomoon;
        showAbjtoMoonAlertDialog(context);
      });
    } else {
      showInsufficientBalAlertDialog(context);
    }
    prefs.setInt("saved", bal);
  }

  void _moontospock() {
    if (bal >= moontospock) {
      setState(() {
        bal -= moontospock;
        showMoontoSpockAlertDialog(context);
      });
    } else {
      showInsufficientBalAlertDialog(context);
    }
    prefs.setInt("saved", bal);
  }

  void _marstoISS() {
    if (bal >= marstoiss) {
      setState(() {
        bal -= marstoiss;
        showMarstoIssAlertDialog(context);
      });
    } else {
      showInsufficientBalAlertDialog(context);
    }
    prefs.setInt("saved", bal);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    prefs = await _prefs;
    savedBal = (prefs.containsKey("saved") ? prefs.getInt("saved") : 0)!;
    setState(() {
      bal = savedBal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Load Wallet',
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BTC wallet ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(Icons.account_balance_wallet)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 200,
                height: 60,
                child: Center(
                  child: Text(
                    bal.toString() + ' BTC',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'up to 3000BTC',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text('is available', style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: loaderController,
                decoration: InputDecoration(
                    hintText: "3000",
                    border: OutlineInputBorder(),
                    labelText: "Input BTC Amount"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _loadBal();
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    child: Text(
                      'Load',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Take a Trip",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '1. Taking the Falcon 9 from Abuja Station to ',
                style: TextStyle(fontSize: 17),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _abjtomoon();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                              child: Icon(
                                Icons.check,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Moon ',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              '(Cost: 100BTC)',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Spock ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'International Space Station ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '2. Taking the Falcon 1 from the Moon to ',
                style: TextStyle(fontSize: 17),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Abuja ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _moontospock();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                              child: Icon(
                                Icons.check,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Spock ',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              '(Cost: 250BTC)',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'International Space Station ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '3. Taking the Falcon 9 from Mars to ',
                style: TextStyle(fontSize: 17),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Abuja ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Moon ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.check,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Spock ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _marstoISS();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 10,
                                child: Icon(
                                  Icons.check,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'International Space ISS',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                '(Cost: 700BTC)',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

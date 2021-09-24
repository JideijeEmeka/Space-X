import 'package:flutter/material.dart';

showAbjtoMoonAlertDialog(BuildContext context) {
  Widget continueButton = TextButton(
    child: Text("Ok",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 20)),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog tripDialog = AlertDialog(
    title: Text("Trip"),
    content: Text("Successfully booked!\n100BTC"),
    actions: [
      continueButton,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return tripDialog;
      });
}

showMoontoSpockAlertDialog(BuildContext context) {
  Widget continueButton = TextButton(
    child: Text("Ok",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 20)),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog tripDialog = AlertDialog(
    title: Text("Trip"),
    content: Text("Successfully booked!\n250BTC"),
    actions: [
      continueButton,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return tripDialog;
      });
}

showMarstoIssAlertDialog(BuildContext context) {
  Widget continueButton = TextButton(
    child: Text("Ok",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 20)),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog tripDialog = AlertDialog(
    title: Text("Trip"),
    content: Text("Successfully booked!\n700BTC"),
    actions: [
      continueButton,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return tripDialog;
      });
}


showInsufficientBalAlertDialog(BuildContext context) {
  Widget continueButton = TextButton(
    child: Text("Ok",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 20)),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog tripDialog = AlertDialog(
    title: Text("Trip"),
    content: Text("Can`t book trip\n You`re running out of BTC"),
    actions: [
      continueButton,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return tripDialog;
      });
}

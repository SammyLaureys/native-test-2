import 'package:flutter/material.dart';

import 'bibliotheek.dart' as lib;

class Config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: new Column(
        children: [
          new Container(
            child: Container(
              width: 400,
              height: 40,
              color: Colors.blue,
                child: new Text(
                    'Instellingen SMTP-server',
                    style: new TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    )
                )
            ),
          ),
          new Container(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'naam@domein',
                    labelText: 'E-mail adres (username)'
                ),
              ),
          ),
          new Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '******',
                  labelText: 'paswoord'
              ),
            ),
          ),
          new Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'SMTP-host',
                  labelText: 'SMTP-host'
              ),
            ),
          ),
          new Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'een geheel getal groter dan 0',
                  labelText: 'SMTP-port'
              ),
            ),
          ),
          new Container(
            child: FlatButton(
              minWidth: 400,
              child: Text('BEWAAR CONFIGURATIE', style: TextStyle(fontSize: 22.0),),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {showAlertDialog(context);},
            ),
          ),
        ],
      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Instellingen SMTP-server"),
    content: Text("Werden opgeslagen en zijn correct!"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

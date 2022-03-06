// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:demo/pages/drawer.dart';
import 'package:demo/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

import 'package:flare_flutter/flare_actor.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Home_guest extends StatelessWidget {
  final _object = TextEditingController();
  final _description = TextEditingController();
  final _ = TextEditingController();

  var controllerObject = TextEditingController();
  var controllerSubject = TextEditingController();
  Future<http.Response> Complain1() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return http.post(
      Uri.parse('http://192.168.1.22:8080/complaint/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'object': "title",
        'subject': "test1",
        'type': 'TYPE1',
        "email": "atefbc@gmail.com"
      }),
    );
  }
  /////////
   Future<http.Response> Complain2() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return http.post(
      Uri.parse('http://192.168.1.22:8080/complaint/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'object': "title",
        'subject': "test1",
        'type': 'TYPE1',
        "email": "atefbc@gmail.com"
      }),
    );
  }
  //////////
 Future<http.Response> Complain3() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return http.post(
      Uri.parse('http://192.168.1.22:8080/complaint/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'object': "title",
        'subject': "test1",
        'type': 'TYPE1',
        "email": "atefbc@gmail.com"
      }),
    );
  } 
  /////////
  Future<http.Response> Complain4() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return http.post(
      Uri.parse('http://192.168.1.22:8080/complaint/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'object': "title",
        'subject': "test1",
        'type': 'TYPE1',
        "email": "atefbc@gmail.com"
      }),
    );
  }
 
 
   @override
  Widget build(BuildContext context) {
    Future showMyDialogSucc() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Honest-E'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text("Your complaint added succsfully ,THANKS"),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                     Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
                },
              ),
            ],
          );
        },
      );
    }

    Future showMyDialog1() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Wrong Tapping'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Object",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                          controller: controllerObject,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Object can't be Empty";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Subjecct",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                          controller: controllerSubject,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Subject can't be Empty";
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              http.post(
                                Uri.parse(
                                    'http://192.168.1.22:8080/complaint/add'),
                                headers: <String, String>{
                                  'Content-Type':
                                      'application/json; charset=UTF-8',
                                },
                                body: jsonEncode(<String, String>{
                                  'object': controllerObject.text,
                                  'subject': controllerSubject.text,
                                  'type': 'WrongTapping',
                                  "email": "taymabh@yahoo.fr"
                                }),
                              );

                              showMyDialogSucc();
                              Navigator.pop(context);
                            },
                            child: const Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
       appBar: AppBar(
           backgroundColor: Color.fromRGBO(143, 148, 251, 1),
       ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.black12,
                child: Column(children: [
                  Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        ListTile(
                          leading: Icon(Icons.account_balance_sharp,
                              color: Colors.grey, size: 45),
                          title: Text(
                            "Here are the commun complaint types ! ",
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                              'Please read carefully each type and choose your problem'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    splashColor: Colors.cyanAccent,
                    onTap: () {
                      Complain1();
                    },
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.white,
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_box_outlined,
                                color: Colors.cyan, size: 45),
                            title: Text(
                              "Type 1 ",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('Damaged wire'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: () {
                      print("Type 2 clicked");
                    },
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.white,
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_box_outlined,
                                color: Colors.cyan, size: 45),
                            title: Text(
                              "Type 2 ",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('Wrong wire insertion in component'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: () {
                    showMyDialog1();
                    },
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.white,
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_box_outlined,
                                color: Colors.cyan, size: 45),
                            title: Text(
                              "Type 3 ",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('Wrong tapping'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: () {
                      print("Type 4 clicked");
                    },
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.white,
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_box_outlined,
                                color: Colors.cyan, size: 45),
                            title: Text(
                              "Type 4 ",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('Wrong crimping'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]))));
  }
}

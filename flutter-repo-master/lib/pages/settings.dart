import 'package:demo/pages/drawer.dart';
import 'package:flutter/material.dart';

class Params extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                
                blurRadius: 2.0, // has the effect of softening the shadow
                spreadRadius: 2.0,
                color: Colors.grey, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  5.0, // vertical, move down 10
                ),
              )
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Settings",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 35),
                      child: Text("Retour"),
                    ),
                    label: Icon(Icons.backspace)),
              ),
              Divider(
                height: 30,
              ),
              Text("All copyrights all reserved to Yoo")
            ],
          ),
        ),
      ),
    );
  }
}
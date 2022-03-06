import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Help"),
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
          actions: [Icon(Icons.search)],
        ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
                      children: [
                        Icon(
                          Icons.warning_amber_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''This appliction en train de building!
    Version demo est disponible
                          ''',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Divider(
                          height: 30,
                        ),
                        Text("All copyrights are reserved to Daexlmaier")
                      ]
                      ),
      ),
    );
      

  }
}
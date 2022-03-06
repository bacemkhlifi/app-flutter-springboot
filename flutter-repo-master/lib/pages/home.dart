import 'package:demo/pages/drawer.dart';
import 'package:flutter/material.dart';

import 'package:flare_flutter/flare_actor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
          actions: [Icon(Icons.search)],
        ),
        drawer: MenuDrawer(),
        body: SingleChildScrollView(
          child: Container(
             color: Colors.black12,
            child: Column(
              children: [
                Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    shadowColor: Colors.blueGrey,
                   elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album, color: Colors.cyan, size: 45),
                          title: Text(
                            "Let's Talk About Love",
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text('Modern Talking Album'),
                        ),
                        
              ],
            ),
          ),

         Card(
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 0.0,
      ),
      elevation:  0.0,
     
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                //  _PostHeader(post: post),
                  const SizedBox(height: 4.0),
                  Text("post.caption"),
                  
                       const SizedBox.shrink(),
  SizedBox(height: 6.0),
               ],
              ),
            ),
           
                const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text("post: post"),
            ),
          ],
        ),
      ),
    )
          ]
        )
        )
        )
        );
  }
}

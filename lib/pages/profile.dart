import 'package:demo/fetch_data/get_profile_user.dart';
import 'package:demo/models/profile.dart';
import 'package:demo/models/profile.dart';
import 'package:demo/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:path/path.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late File _image;
  String email = "";
  Future getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    final String? emailDB = preferences.getString("email");
    print(emailDB);
    print('///////////');
    setState(() {
      email = emailDB!;
    });
  }

  @override
  void initState() {
    super.initState();

    getPref();
  }

  @override
  Widget build(BuildContext context) {
    //GetProfile getUser = GetProfile();
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        //  print('Image Path $_image');
      });
    }

    ////////////////////////////
    ///

/////on init

    /*  Future uploadPic(BuildContext context) async{
      String fileName = basename(_image.path);
       StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
       StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
       StorageTaskSnapshot taskSnapshot=await uploadTask.onComplete;
       setState(() {
          print("Profile Picture uploaded");
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
       });
    }*/
    fetchDataUser getUser = fetchDataUser();
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        actions: [Icon(Icons.search)],
      ),
      body: 
       FutureBuilder<ProfileModel>(
            future: getUser.getuser() ,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return 
      Builder(
        builder: (context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Color(0xff476cfb),
                      child: ClipOval(
                        child: new SizedBox(
                          width: 180.0,
                          height: 180.0,
                          child: Image.network(
                            "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.camera,
                        size: 30.0,
                      ),
                      onPressed: () {
                        getImage();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('First Name',
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 18.0)),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(snapshot.data!.firstName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Color(0xff476cfb),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Last Name',
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 18.0)),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: (snapshot.data!.lastName !=null )? Text(snapshot.data!.lastName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)): Text(" last name"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Color(0xff476cfb),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                         
                         
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Email',
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 18.0)),
                    SizedBox(width: 20.0),
                    Text(snapshot.data!.email,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Color(0xff476cfb),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                  RaisedButton(
                    color: Color(0xff476cfb),
                    onPressed: () {
                      
              
                      // getUser.fetchUses();
                      // uploadPic(context);
                      
                    },
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      );


         
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          )
        


    );
  }
}

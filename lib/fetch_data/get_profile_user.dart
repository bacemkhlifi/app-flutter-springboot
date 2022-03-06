import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:demo/models/profile.dart';

import 'package:shared_preferences/shared_preferences.dart';

class fetchDataUser{
Future<ProfileModel> getuser() async {

  
    SharedPreferences preferences = await SharedPreferences.getInstance();

   

  final response = await http
      .get(Uri.parse('http://192.168.1.22:8080/user/find/'+ preferences.getString("email")!));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ProfileModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

}

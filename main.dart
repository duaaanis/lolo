import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/regsiter.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
     routes: {
       'login':(context) => MyLogin(),
       'register': (context)=>MyRagister()
     },
  ));
}

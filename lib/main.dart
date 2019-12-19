import 'package:flutter/material.dart';
import 'package:app_watch_mobile/ui/login.dart';

void main(){
  runApp(MaterialApp(
    home: LoginPage(),
    theme: ThemeData(hintColor: Colors.white),
    debugShowCheckedModeBanner: false,
  ));
}


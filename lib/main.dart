import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        appBar: AppBar(
            title: Text('Watch Mobile'),
            centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "Login"),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "Senha"),
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.android),
                onPressed: (){},
              ),
            )
          ],
        ),
      ),
    );
  }

}

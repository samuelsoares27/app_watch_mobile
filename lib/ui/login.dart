import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:app_watch_mobile/ui/cadastro.dart';
import 'package:app_watch_mobile/ui/cadastro.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage>{
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
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 150.0, 40.0, 0.0),
              child: TextField(
                onChanged: null,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: "Digite o seu Login...",
                    labelText: "Login",
                    icon: Icon(Icons.people)
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 0.0),
              child: TextField(
                onChanged: null,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: "Digite o sua Senha...",
                    labelText: "Senha",
                    icon: Icon(Icons.security)
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child:SizedBox(
                      width: 150,
                      child: RaisedButton.icon(
                        onPressed: (){},
                        icon: Icon(
                            Icons.done
                        ),
                        label: Text('Google'),
                        textColor: Colors.indigo,
                        color: Colors.white,
                      ),
                    ) ,
                  ),
                  Padding(
                    padding: new EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child:SizedBox(
                      width: 150,
                      child: RaisedButton.icon(
                        onPressed: (){},
                        icon: Icon(
                            Icons.done
                        ),
                        label: Text('Email'),
                        textColor: Colors.white,
                        color: Colors.indigo,
                      ),
                    ) ,
                  ),
                ],
              ),
            ),
            Container(
              height:40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CadastroPage())
                  );
                },
              ),
            ) ,
          ],
        ),

      ),
    );
  }

}



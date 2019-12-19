import 'dart:js';

import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyCadastroPage(),
    );
  }
}

class MyCadastroPage extends StatefulWidget {
  @override
  _MyCadastroPageState createState() => _MyCadastroPageState();
}

class _MyCadastroPageState extends State<MyCadastroPage>{

  final _Nome= TextEditingController();
  final _Email= TextEditingController();
  final _Senha= TextEditingController();
  bool Cadastro;

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
                controller: _Nome,
                onChanged: null,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: "Digite o seu Nome...",
                    labelText: "Nome",
                    icon: Icon(Icons.people)
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 0.0),
              child: TextField(
                controller: _Email,
                onChanged: null,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: "Digite o seu Email...",
                    labelText: "Email",
                    icon: Icon(Icons.email)
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 0.0),
              child: TextField(
                controller: _Senha,
                onChanged: null,
                autocorrect: true,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Digite o sua Senha...",
                    labelText: "Senha",
                    icon: Icon(Icons.lock_outline)
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 250,
                      child: RaisedButton.icon(
                        onPressed: (){
                          Cadastro = Cadastrar(_Nome.text, _Email.text, _Senha.text);
                          if (Cadastro == false){
                            Informacao(context);
                          }
                        },
                        icon: Icon(
                            Icons.done
                        ),
                        label: Text('Cadastrar'),
                        textColor: Colors.white,
                        color: Colors.indigo,
                    ),
                  ) ,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool Cadastrar(String Nome, Email, Senha){

  if ((Nome == '') || (Email == '') || (Senha == '')){

   return false;

  }else{
    
  }

}

Informacao(BuildContext context){
  return showDialog(
      context: context, builder: (context){
        return AlertDialog(
          title: Text("Atenção"),
          content: Text("É necessário preencher todos os campos"),
        );
   });

}


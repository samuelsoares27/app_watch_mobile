import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {

  CadastroPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){

            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        //child: Image.network(_gifData["images"]["fixed_height_downsampled"]["url"]),
      ),
    );
  }
}

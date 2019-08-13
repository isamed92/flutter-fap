import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  
  final estiloTexto = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Titulo'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text('Numero de clicks:', style:estiloTexto,),
          Text('0', style:estiloTexto),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

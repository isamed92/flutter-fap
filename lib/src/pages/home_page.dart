import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  
  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 10;

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
          Text('$conteo', style:estiloTexto),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {
          // conteo++;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

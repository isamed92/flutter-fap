import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Numero de Taps:',
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _substract,
        ),
        
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _substract() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);

  }
}

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  createState() => _ContadorState();
}

class _ContadorState extends State {
  final _estilo_de_texto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Primera App',
          style: _estilo_de_texto,
        ),
        backgroundColor: Color.fromARGB(255, 222, 10, 51),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Número de clicks:",
              style: _estilo_de_texto,
            ),
            Text(
              "$_conteo",
              style: _estilo_de_texto,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 25.0),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: () {
          _conteo = 0;
          setState(() {});
        },
        backgroundColor: Color.fromARGB(255, 222, 10, 51),
      ),
      Expanded(
        child: SizedBox(width: 0),
      ),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () {
          _conteo--;

          setState(() {});
        },
        backgroundColor: Color.fromARGB(255, 222, 10, 51),
      ),
      SizedBox(width: 10.0),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _conteo++;

          setState(() {});
        },
        backgroundColor: Color.fromARGB(255, 222, 10, 51),
        // splashColor: Color.fromARGB(255, 222, 10, 87),
      ),
      SizedBox(width: 0)
    ]);
  }
}

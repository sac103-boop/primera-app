import 'package:flutter/material.dart';
import 'contador_page.dart';

class HomePage extends StatelessWidget {
  final estilo_de_texto = new TextStyle(fontSize: 25);
  final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Titulo',
          style: estilo_de_texto,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Número de taps:",
              style: estilo_de_texto,
            ),
            Text(
              "$conteo",
              style: estilo_de_texto,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

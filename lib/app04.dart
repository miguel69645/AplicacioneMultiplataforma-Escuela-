// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class App04 extends StatefulWidget {
  const App04({super.key});

  @override
  State<App04> createState() => _App04State();
}

enum EstadoCivil { soltero, casado }

List Colores = ['Azul', 'Rojo', 'Verde', 'Amarillo', 'Naranja', 'Morado'];

class _App04State extends State<App04> {
  EstadoCivil rbRespuesta = EstadoCivil.soltero;
  bool cbRespuesta = false;
  String itemSeleccionado = Colores.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App04'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          RadioListTile(
              title: Text('SOLTERO'),
              value: EstadoCivil.soltero,
              groupValue: rbRespuesta,
              onChanged: (data) {
                setState(() {
                  rbRespuesta = data!;
                });
              }),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
              title: Text('CASADO'),
              value: EstadoCivil.casado,
              groupValue: rbRespuesta,
              onChanged: (data) {
                setState(() {
                  rbRespuesta = data!;
                });
              }),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: Text('INSCRITO EN INGLÉS'),
              value: cbRespuesta,
              onChanged: (data) {
                setState(() {
                  cbRespuesta = data!;
                });
              }),
          DropdownButtonFormField(
              items: Colores.map((e) {
                return DropdownMenuItem(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
              onChanged: (item) {
                setState(() {
                  itemSeleccionado = item.toString();
                });
              }),
        ],
      ),
    );
  }
}

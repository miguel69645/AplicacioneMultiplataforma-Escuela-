// ignore_for_file: prefer__ructors, prefer__literals_to_create_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';

class App05 extends StatefulWidget {
  App05({super.key});

  @override
  State<App05> createState() => _App05State();
}

enum Premio { viaje, regalo, dinero }

Map<String, Color> colores = {
  'Azul': Colors.blue,
  'Rojo': Colors.red,
  'Verde': Colors.green,
  'Amarillo': Colors.yellow,
  'Naranja': Colors.orange,
  'Morado': Colors.purple,
};

class _App05State extends State<App05> {
  Premio respuesta = Premio.viaje;
  bool respuestach = false;
  bool mostrarTitulo = true;
  String item = colores.keys.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colores[item],
      appBar: AppBar(
        title: mostrarTitulo ? Text('App05') : null,
        centerTitle: true,
        backgroundColor: Colors.white30,
      ),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          ListTile(
            title: Text(
              'Elija su premio:',
              style: TextStyle(fontSize: 30),
            ),
          ),
          RadioListTile(
              title: Text('Viaje'),
              value: Premio.viaje,
              groupValue: respuesta,
              onChanged: (data) {
                setState(() {
                  respuesta = data!;
                });
              }),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
            title: Text('Regalo'),
            value: Premio.regalo,
            groupValue: respuesta,
            onChanged: (data) {
              setState(() {
                respuesta = data!;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
              title: Text('Dinero'),
              value: Premio.dinero,
              groupValue: respuesta,
              onChanged: (data) {
                setState(() {
                  respuesta = data!;
                });
              }),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: Text('Ocultar TITULO'),
              value: respuestach,
              onChanged: (data) {
                setState(() {
                  respuestach = data!;
                  mostrarTitulo = !respuestach;
                });
              }),
          DropdownButtonFormField(
            items: colores.keys.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                item = value.toString();
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white30),
              foregroundColor: MaterialStatePropertyAll(Colors.black),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: colores[item],
                    titleTextStyle:
                        TextStyle(fontSize: 30, color: Colors.black),
                    contentTextStyle:
                        TextStyle(fontSize: 25, color: Colors.black),
                    title: Text('Atención'),
                    content: Text(
                        'Resultado\nUsted eligió "${respuesta.toString().split('.').last}" y el fondo es color "$item".'),
                    //respuesta.toString().split('.').last se usa para obtener el nombre del premio seleccionado como una cadena
                    //ya que respuesta es de tipo enum.
                    actions: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary:
                              Colors.black, // Cambia el color del texto aquí
                        ),
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Mostrar'),
          ),
        ],
      ),
    );
  }
}

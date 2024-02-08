// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class App02 extends StatefulWidget {
  App02({super.key});

  @override
  State<App02> createState() => _App02State();
}

class _App02State extends State<App02> {
  final controlador1 = TextEditingController();
  final controlador2 = TextEditingController();
  final controlador3 = TextEditingController();
  String mensaje = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aplicacion 2',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('(C) Rservados Miguel Angel Carrillo Alcantar'),
                ),
              );
            },
            icon: Icon(Icons.info_outline),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          TextField(
            controller: controlador1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valor 1:',
              labelStyle: TextStyle(fontSize: 20),
              prefixIcon: Icon(Icons.numbers),
              prefixIconColor: Colors.lightGreen,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: controlador2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valor 2:',
              labelStyle: TextStyle(fontSize: 20),
              prefixIcon: Icon(Icons.numbers),
              prefixIconColor: Colors.lightGreen,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: controlador3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valor 3:',
              labelStyle: TextStyle(fontSize: 20),
              prefixIcon: Icon(Icons.numbers),
              prefixIconColor: Colors.lightGreen,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int v1 = int.parse(controlador1.text);
          int v2 = int.parse(controlador2.text);
          int v3 = int.parse(controlador3.text);
          int mayor = v1;

          if (v2 > mayor) {
            mayor = v2;
          } else {
            if (v3 > mayor) {
              mayor = v3;
            }
          }
          setState(() {
            mensaje = "El mayor es: $mayor";
          });
          showDialog(
              context: context,
              builder: (f) {
                return AlertDialog(
                  title: Text("ATENCION"),
                  content: Text("${mensaje}"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"),
                    ),
                  ],
                );
              });
        },
        child: Icon(Icons.lan_outlined),
      ),
    );
  }
}

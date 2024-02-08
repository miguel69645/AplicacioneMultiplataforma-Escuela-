// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'dart:io';

import 'package:flutter/material.dart';

class App01 extends StatefulWidget {
  const App01({super.key});

  @override
  State<App01> createState() => _App01State();
}

class _App01State extends State<App01> {
  String nombre = "";
  final controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hola Mundo",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black26,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo)),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Presiona para salir",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                  backgroundColor: Colors.lightBlue,
                  action: SnackBarAction(
                      label: "SALIR",
                      onPressed: () {
                        exit(0);
                      }),
                ));
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bienvenido",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.deepPurple,
                      backgroundColor: Colors.white10)),
              SizedBox(
                height: 80,
              ),
              TextField(
                controller: controlador,
                decoration: InputDecoration(
                    labelText: "Escribe tu nombre",
                    suffix: Icon(Icons.account_box_outlined),
                    suffixIconColor: Colors.deepPurple,
                    border: OutlineInputBorder()),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nombre = controlador.text;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Hola ${nombre}")));
                  },
                  child: Text("A ver picale")),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.pan_tool),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';

class App06 extends StatefulWidget {
  const App06({super.key});

  @override
  State<App06> createState() => _App06State();
}

enum titulacion { ceneval, residencia, tesis }

List carrera = [
  "Sistemas Computacionales",
  "Bioquimica",
  "Quimica",
  "Civil",
  "Arquitectura",
  "Gestion Empresarial",
  "Mecatronica"
];

class _App06State extends State<App06> {
  bool algo = true;
  var nombre = TextEditingController();
  bool algo2 = false;
  titulacion grupo = titulacion.ceneval;
  String itemseleccionado = carrera.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App06'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_a_photo),
            TextField(
              controller: nombre,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.cabin),
                labelText: "Escriba su nombre:",
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('OK')),
                SizedBox(width: 10),
                FilledButton(onPressed: () {}, child: Text('OK')),
                SizedBox(width: 10),
                TextButton(onPressed: () {}, child: Text('OK')),
                SizedBox(width: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text('OK')),
            SizedBox(height: 10),
            FilledButton(onPressed: () {}, child: Text('OK')),
            SizedBox(height: 10),
            TextButton(onPressed: () {}, child: Text('OK')),
            SizedBox(height: 10),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Hola como estas?"),
                    action: SnackBarAction(
                      label: "OK",
                      onPressed: () {},
                    ),
                  ));
                },
                icon: Icon(Icons.delete)),
            SizedBox(height: 10),
            CheckboxListTile(
              title: Text('Aceptar'),
              value: algo2,
              onChanged: (datoCambiado) {
                setState(() {
                  algo2 = datoCambiado!;
                });
              },
            ),
            RadioListTile(
              title: Text('CENEVAL'),
              value: titulacion.ceneval,
              groupValue: grupo,
              onChanged: (data) {
                setState(() {
                  grupo = data!;
                });
              },
            ),
            RadioListTile(
              title: Text('RESIDENCIA'),
              value: titulacion.residencia,
              groupValue: grupo,
              onChanged: (data) {
                setState(() {
                  grupo = data!;
                });
              },
            ),
            RadioListTile(
              title: Text('TESIS'),
              value: titulacion.tesis,
              groupValue: grupo,
              onChanged: (data) {
                setState(() {
                  grupo = data!;
                });
              },
            ),
            SizedBox(height: 10),
            DropdownButtonFormField(
              value: itemseleccionado,
              items: carrera.map((e) {
                return DropdownMenuItem(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
              onChanged: (data) {
                setState(() {
                  itemseleccionado = data.toString();
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('ATENCION'),
                  content: Text('Mensaje del dialogo'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Cancelar"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('OK')),
    );
  }
}

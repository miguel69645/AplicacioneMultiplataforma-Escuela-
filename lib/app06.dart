// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class App06 extends StatefulWidget {
  const App06({super.key});

  @override
  State<App06> createState() => _App06State();
}

class _App06State extends State<App06> {
  bool algo = true;
  var nombre = TextEditingController();
  bool algo2 = false;

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
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
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
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Text('OK')),
    );
  }
}

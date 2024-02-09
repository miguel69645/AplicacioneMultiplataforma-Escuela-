// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class App03 extends StatefulWidget {
  App03({super.key});

  @override
  State<App03> createState() => _App03State();
}

class _App03State extends State<App03> {
  int _indice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App03"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _indice = 1;
              });
            },
            icon: Icon(Icons.wallpaper),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _indice = 1;
              });
            },
            icon: Icon(Icons.account_tree),
          ),
        ],
      ),
      body: dinamico(),
    );
  }

  Widget dinamico() {
    switch (_indice) {
      case 1:
        {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Image.asset("assets/logo.png"),
                  onTap: () {
                    setState(() {
                      _indice = 0;
                    });
                  },
                ),
              ],
            ),
          );
        }
      case 2:
        {
          return ListView(
            padding: EdgeInsets.all(50),
            children: [
              TextField(),
              SizedBox(
                height: 10,
              ),
              FilledButton(
                onPressed: () {},
                child: Text("Evaluar"),
              ),
              Text("data"),
            ],
          );
        }
    }
    return Center(
      child: Icon(
        Icons.accessible_forward,
        size: 80,
      ),
    );
  }
}

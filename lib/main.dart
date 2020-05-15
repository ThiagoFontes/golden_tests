import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Exemplo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          direction: Axis.horizontal,
          children: _createColoredContainers(),
        ),
      ),
    );
  }

  List<Widget> _createColoredContainers() {
    List<Widget> containersList = [];
    Random random = new Random();
    for (int i = 0; i < 5; i++) {
      containersList.add(
        Container(
          width: 100,
          height: 100,
          color: Color.fromARGB(
            255,
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
          ),
        ),
      );
    }
    return containersList;
  }
}

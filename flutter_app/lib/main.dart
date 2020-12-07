import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Test App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  Color backgroundColor;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Colors.black;

  void setColorPage() {
    setState(() {
      this.backgroundColor = generateRandomColor();
    });
  }

  Color generateRandomColor() {
    var rng = new Random();
    return Color.fromRGBO(
        rng.nextInt(255), rng.nextInt(255), rng.nextInt(255), 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: this.backgroundColor,

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: InkWell(
        onTap: () => setColorPage(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey there',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

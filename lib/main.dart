import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fortran paper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = '';
  String _fortran = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Saída normal:',
            ),
            Text(
              '$_text',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Saída Fortran:',
            ),
            Text(
              '$_fortran',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    _text = text.toUpperCase();
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Digite sua entrada',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  late bool _visible;

  @override
  void initState() {
    _visible = true;
  }

  void _toggleVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Opacity(
                opacity: _visible ? 1.0 : 0.2,
                child: const Text('Now you see me now you don\'t!')),
            ElevatedButton(
              onPressed: _toggleVisible,
              child: const Text('Toggle'),
            )
          ],
        ),
      ),
    );
  }
}

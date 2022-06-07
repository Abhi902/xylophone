import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey(Color color, int x) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playsound(x);
        },
        child: Text('click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('XYLOPHONE')),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(Colors.red, 1),
              buildkey(Colors.orange, 2),
              buildkey(Colors.yellow, 3),
              buildkey(Colors.green, 4),
              buildkey(Colors.teal, 5),
              buildkey(Colors.blue, 6),
              buildkey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

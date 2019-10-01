import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _boderRadius = BorderRadius.circular(8.0);

  Random _random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _boderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {
    setState(() {
      _width = _random.nextInt(300).toDouble();
      _height = _random.nextInt(250).toDouble();
      _color = Color.fromRGBO(
          _random.nextInt(256), _random.nextInt(256), _random.nextInt(256), 1);
      _boderRadius = BorderRadius.circular(_random.nextInt(100).toDouble());
    });
  }
}

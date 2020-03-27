import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPage createState() => _AnimatedContainerPage();
}

class _AnimatedContainerPage extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _heith = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadus = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        height: _heith,
        decoration: BoxDecoration(borderRadius: _borderRadus, color: _color),
        duration: Duration(seconds: 1),
        curve: Curves.bounceIn,
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () => _cambiarPropiedades()),
    );
  }

  void _cambiarPropiedades() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _heith = random.nextInt(300).toDouble();
      _color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
          random.nextInt(255), random.nextInt(255));
      _borderRadus = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}

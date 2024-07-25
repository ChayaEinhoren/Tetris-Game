import 'package:flutter/material.dart';

class Tile extends StatelessWidget{
  final Color color;

  const Tile({required this.color});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      color: color,
    );
  }
}
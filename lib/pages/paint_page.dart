import 'package:flutter/material.dart';
import 'package:pinturilla/models/drawn_line.dart';

class PaintPage extends StatefulWidget {
  const PaintPage({super.key});

  @override
  State<PaintPage> createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {
  final List<DrawnLine> _lines = [];
  Color _selectedColor = Colors.black;
  double _selectedWidth = 5;

  void _onPanStart(Offset position){
    setState(() {
      _lines.add(
        DrawnLine(
          points: [position],
          color: _selectedColor,
          strokeWidth: _selectedWidth
        )
      );
    });
  }

  void _onPanUpdate(Offset position){
    setState(() {
      if(_lines.isNotEmpty){
        _lines.last.points.add(position);
      }
    });
  }

  void _clearCanvas(){
    setState(() {
      _lines.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
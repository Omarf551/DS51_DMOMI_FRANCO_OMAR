import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Proyecto 2'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          child: Row(
            children: [
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.red),
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.red),
            ],
          ),
        ),


        Expanded(
          child: Row(
            children: [
              _buildGridCell(Colors.red),
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.red),
            ],
          ),
        ),


        Expanded(
          child: Row(
            children: [
              _buildGridCell(Colors.red),
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.red),
              _buildGridCell(Colors.blue),
            ],
          ),
        ),

   
        Expanded(
          child: Row(
            children: [
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.red),
              _buildGridCell(Colors.blue),
              _buildGridCell(Colors.red),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGridCell(Color color) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}

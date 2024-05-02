import 'package:flutter/material.dart';

class AlphabetScreen extends StatelessWidget {
  final List<String> alphabets = List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabets'),
      ),
      body: ListView.builder(
        itemCount: alphabets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(alphabets[index]),
          );
        },
      ),
    );
  }
}
